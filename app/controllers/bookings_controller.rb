class BookingsController < ApplicationController

  def index
    #TODO - GET ALL THE USER'S BOOKED PARKING SPOTS' BOOKINGS AND RETURN THEM IN AN ARRAY (@bookings)
    @bookings = []
    current_user.parking_spots.each do |spot|
      @bookings += policy_scope(Booking.where(parking_spot: spot)) unless spot.bookings.empty?
    end

    if @bookings.empty?
      @bookings = policy_scope(Booking.where(user: current_user.parking_spots.first))
    end
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.end_time = Time.zone.local_to_utc(params[:booking][:start_time].to_time) + params[:booking][:duration].to_i*3600
    @booking.user = current_user
    @booking.parking_spot = ParkingSpot.find(params[:parking_spot_id])
    @booking.total_price = params[:booking][:duration].to_i * @booking.parking_spot.price
    notification = Notification.create(account: @booking.parking_spot.user.account, notification_type: 'booking', sent_by: current_user.id, received_by: @booking.parking_spot.user.id)
    if @booking.save
      notification.update(booking_number: @booking.id)
      redirect_to account_path(current_user)
    else
      redirect_to parking_spot_path(@booking.parking_spot)
    end

    authorize @booking
  end


  def destroy
    ######################### WHEN A USER CANCELS HIS PARKING SPOT'S BOOKING(THE OWNER) ##############################################
    ######################### SENT_BY: THE PARKING SPOT OWNER'S ID, AND RECEIVED_BY: THE PERSON WHO BOOKED'S ID #########################

    @booking = Booking.find(params[:id])
    Notification.find_by(booking_number: @booking.id).destroy
    content = "#{current_user.full_name} has cancelled your reservation for #{@booking.parking_spot.title}"
    Notification.create(account: @booking.parking_spot.user.account, notification_type: 'cancelled_booking', content: content, sent_by: current_user.id, received_by: @booking.user.id)
    @booking.destroy

    redirect_to account_path(current_user)
    authorize @booking
  end

  def cancel_booking
    ######################### WHEN A USER CANCELS HIS UPCOMING BOOKING ################################################################
    ######################### SENT_BY: THE PERSON WHO BOOKED'S ID AND RECEIVED_BY: THE PARKING SPOT OWNER'S ID #########################
    @booking = Booking.find(params[:id])
    Notification.find_by(booking_number: @booking.id).destroy

    content = "#{current_user.full_name} has cancelled the reservation for #{@booking.parking_spot.title}"
    Notification.create(account: @booking.parking_spot.user.account, notification_type: 'cancelled_booking', content: content, sent_by: current_user.id, received_by: @booking.parking_spot.user.id)
    @booking.destroy

    redirect_to account_path(current_user)
    authorize @booking
  end

  private

  def booking_params
    params.require(:booking).permit(:start_time, :duration, :date)
  end
end
