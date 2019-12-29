########################## Deleting models ##########################
puts "Cleaning Database..."
Booking.destroy_all
Review.destroy_all
ParkingSpot.destroy_all
Account.destroy_all
User.destroy_all

########################## Making Users and Accounts ##########################
puts 'Creating users...'

user1 = User.create(
  email: 'sponge@bob.com',
  password: '123456',
  phone_number: '617-930-2373',
  full_name: 'Sponge Bob'
  )
user1.remote_photo_url = 'https://res.cloudinary.com/dv2x1zvtu/image/upload/v1574676603/SpongeBob_stock_art_wxxisz.png'
user1.save
Account.create(user: user1)

user2 = User.create(
  email: 'noah@nash.com',
  password: '123456',
  phone_number: '617-930-2373',
  full_name: 'Noah Nash'
  )
user2.remote_photo_url = 'https://res.cloudinary.com/dv2x1zvtu/image/upload/v1574845946/Users/NoahNash_pco64j.jpg'
user2.save

Account.create(user: user2)

user3 = User.create(
  email: 'levy@henry.com',
  password: '123456',
  phone_number: '617-930-2373',
  full_name: 'Levy Henry'
  )
user3.remote_photo_url = 'https://res.cloudinary.com/dv2x1zvtu/image/upload/v1574846398/Users/LevyHenry_kk3qiu.jpg'
user3.save
Account.create(user: user3)

omer = User.create(
  email: 'omer@geva.com',
  password: '123456',
  phone_number: '617-930-2373',
  full_name: 'Omer geva'
  )
omer.remote_photo_url = 'https://avatars2.githubusercontent.com/u/54701359?v=4'
omer.save
Account.create(user: omer)

brad = User.create(
  email: 'brad@korman.com',
  password: '123456',
  phone_number: '617-930-2373',
  full_name: 'Brad Korman'
  )
brad.remote_photo_url = 'https://avatars2.githubusercontent.com/u/54051432?v=4'
brad.save
Account.create(user: brad)

alisa = User.create(
  email: 'alisa@silina.com',
  password: '123456',
  phone_number: '617-930-2373',
  full_name: 'Alisa Silina'
  )
alisa.remote_photo_url = 'https://avatars0.githubusercontent.com/u/54353429?v=4'
alisa.save
Account.create(user: alisa)

david = User.create(
  email: 'david@sellam.com',
  password: '123456',
  phone_number: '617-930-2373',
  full_name: 'David Sellam'
  )
david.remote_photo_url = 'https://avatars1.githubusercontent.com/u/37403593?v=4'
david.save
Account.create(user: david)

dean = User.create(
  email: 'dean@wheeler.com',
  password: '123456',
  phone_number: '617-930-2373',
  full_name: 'Dean wheeler'
  )
dean.remote_photo_url = 'https://avatars2.githubusercontent.com/u/35640022?v=4'
dean.save
Account.create(user: dean)


########################## Making Parking Spots ##########################
puts "creating Parking Spots....."
parkingspot1 = ParkingSpot.new(user: user1, description: "Located at end of the first floor, row C", title: "Best Parking in Tel Aviv", price: 20, address: 'Allenby 24, Tel Aviv-Yafo, Israel')
parkingspot1.remote_photo_url = 'https://www.pymnts.com/wp-content/uploads/2018/03/parkingspot.jpg'
parkingspot1.save!
parkingspot2 = ParkingSpot.new(user: alisa, description: "Enter the garage, first spot to the right", title: "Very Good location", price: 20, address: 'Frishman 29, Tel Aviv-Yafo, Israel')
parkingspot2.remote_photo_url = 'https://www.pymnts.com/wp-content/uploads/2018/03/parkingspot.jpg'
parkingspot2.save!
parkingspot3 = ParkingSpot.new(user: brad, description: "Parking is outside, on the left of the apartment building", title: "Close to the Shuk!", price: 20, address: 'Nahalat Binyamin 2, Tel Aviv-Yafo, Israel')
parkingspot3.remote_photo_url = 'https://www.pymnts.com/wp-content/uploads/2018/03/parkingspot.jpg'
parkingspot3.save!
parkingspot4 = ParkingSpot.new(user: omer, description: "Under the office buldings, floor -1, row D, spot 2", title: "Walk to the beach!(2)", price: 20, address: 'Ben Yehuda 32, Tel Aviv-Yafo, Israel')
parkingspot4.remote_photo_url = 'https://www.pymnts.com/wp-content/uploads/2018/03/parkingspot.jpg'
parkingspot4.save!
parkingspot5 = ParkingSpot.new(user: omer, description: "Under the office buldings, floor -1, row D, spot 1", title: "Walk to the beach!", price: 20, address: 'Ben Yehuda 32, Tel Aviv-Yafo, Israel')
parkingspot5.remote_photo_url = 'https://www.pymnts.com/wp-content/uploads/2018/03/parkingspot.jpg'
parkingspot5.save!
parkingspot6 = ParkingSpot.new(user: david, description: "On right of the building, wierd plant at end of the spot", title: "Close to Kikar Rabin!", price: 20, address: 'Gordon 3, Tel Aviv-Yafo, Israel')
parkingspot6.remote_photo_url = 'https://www.pymnts.com/wp-content/uploads/2018/03/parkingspot.jpg'
parkingspot6.save!
parkingspot7 = ParkingSpot.new(user: user2, description: "Building is old but tall, parking is just outside on the street. First spot", title: "Best location in all of, Tel Aviv-Yafo, Israel!", price: 20, address: 'Betzalel Yafe 7, Tel Aviv-Yafo, Israel')
parkingspot7.remote_photo_url = 'https://www.pymnts.com/wp-content/uploads/2018/03/parkingspot.jpg'
parkingspot7.save!
parkingspot8 = ParkingSpot.new(user: dean, description: "This location is prime, close to everything. The spot is just outside of the building", title: "Park here!", price: 20, address: 'Ben Gurion 12, Tel Aviv-Yafo, Israel')
parkingspot8.remote_photo_url = 'https://www.pymnts.com/wp-content/uploads/2018/03/parkingspot.jpg'
parkingspot8.save!
parkingspot9 = ParkingSpot.new(user: user2, description: "Under the office buildings, floor -2, row B, spot 3", title: "King Geoge Parking(3)", price: 20, address: 'King Geoge St. 97, Tel Aviv-Yafo, Israel')
parkingspot9.remote_photo_url = 'https://www.pymnts.com/wp-content/uploads/2018/03/parkingspot.jpg'
parkingspot9.save!
parkingspot10 = ParkingSpot.new(user: user2, description: "Under the office buildings, floor -2, row B, spot 2", title: "King Geoge Parking(2)", price: 20, address: 'King Geoge St. 97, Tel Aviv-Yafo, Israel')
parkingspot10.remote_photo_url = 'https://www.pymnts.com/wp-content/uploads/2018/03/parkingspot.jpg'
parkingspot10.save!
parkingspot11 = ParkingSpot.new(user: user2, description: "Under the office buildings, floor -2, row B, spot 1", title: "King Geoge Parking(1)", price: 20, address: 'King Geoge St. 97, Tel Aviv-Yafo, Israel')
parkingspot11.remote_photo_url = 'https://www.pymnts.com/wp-content/uploads/2018/03/parkingspot.jpg'
parkingspot11.save!
parkingspot12 = ParkingSpot.new(user: user3, description: "Parking is just around the corner. Right most corner of the lot", title: "Frequently Available!", price: 20, address: 'Dov Hoz St 1, Tel Aviv-Yafo, Israel')
parkingspot12.remote_photo_url = 'https://www.pymnts.com/wp-content/uploads/2018/03/parkingspot.jpg'
parkingspot12.save!
parkingspot13 = ParkingSpot.new(user: user3, description: "Parking is outside on the left, two spots in", title: "Beachside Parking", price: 20, address: 'HaYarkon St 22, Tel Aviv-Yafo, Israel')
parkingspot13.remote_photo_url = 'https://www.pymnts.com/wp-content/uploads/2018/03/parkingspot.jpg'
parkingspot13.save!




