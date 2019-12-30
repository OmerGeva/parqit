class AccountsController < ApplicationController
  def show
    @parking_spots = current_user.parking_spots

    authorize @parking_spots

    @upcoming_bookings = current_user.bookings.select do |booking|
      booking.date > Date.today ||  (booking.date == Date.today && booking.start_time > Time.now)
    end

    @previous_bookings = current_user.bookings.select do |booking|
      booking.date <= Date.today && booking.end_time < Time.now
    end
  end

  def notifications
    @notifications = Notification.where(account: current_user.account)
    @notifications.each do |notification|
      notification.update(seen: true)
    end

    authorize current_user.account
  end

end
