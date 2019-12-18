########################## Deleting models ##########################
puts "Cleaning Database..."
Booking.destroy_all
ParkingSpot.destroy_all
Account.destroy_all
User.destroy_all

########################## Making Users and Accounts ##########################
puts 'Creating users...'

user1 = User.create(
  email: 'sponge@bob.com',
  password: '123456',
  full_name: 'Sponge Bob'
  )
Account.create(user: user1)

user2 = User.create(
  email: 'noah@nash.com',
  password: '123456',
  full_name: 'Noah Nash'
  )
Account.create(user: user2)

user3 = User.create(
  email: 'levy@henry.com',
  password: '123456',
  full_name: 'Levy Henry'
  )
Account.create(user: user3)

omer = User.create(
  email: 'omer@geva.com',
  password: '123456',
  full_name: 'Omer geva'
  )
Account.create(user: omer)

brad = User.create(
  email: 'brad@korman.com',
  password: '123456',
  full_name: 'Brad Korman'
  )
Account.create(user: brad)

alisa = User.create(
  email: 'alisa@silina.com',
  password: '123456',
  full_name: 'Alisa Silina'
  )
Account.create(user: alisa)

david = User.create(
  email: 'david@sellam.com',
  password: '123456',
  full_name: 'David Sellam'
  )
Account.create(user: david)

dean = User.create(
  email: 'dean@wheeler.com',
  password: '123456',
  full_name: 'Dean wheeler'
  )
Account.create(user: dean)


########################## Making Parking Spots ##########################
puts "creating Parking Spots....."
ParkingSpot.create(user: user1, description: "Located at end of the first floor, row C", title: "Best Parking in Tel Aviv", address: 'Allenby 24, Tel Aviv-Yafo, Israel')
ParkingSpot.create(user: alisa, description: "Enter the garage, first spot to the right", title: "Very Good location", address: 'Frishman 29, Tel Aviv-Yafo, Israel')
ParkingSpot.create(user: brad, description: "Parking is outside, on the left of the apartment building", title: "Close to the Shuk!", address: 'Nahalat Binyamin 2, Tel Aviv-Yafo, Israel')
ParkingSpot.create(user: omer, description: "Under the office buldings, floor -1, row D, spot 2", title: "Walk to the beach!(2)", address: 'Ben Yehuda 32, Tel Aviv-Yafo, Israel')
ParkingSpot.create(user: omer, description: "Under the office buldings, floor -1, row D, spot 1", title: "Walk to the beach!", address: 'Ben Yehuda 32, Tel Aviv-Yafo, Israel')
ParkingSpot.create(user: david, description: "On right of the building, wierd plant at end of the spot", title: "Close to Kikar Rabin!", address: 'Gordon 3, Tel Aviv-Yafo, Israel')
ParkingSpot.create(user: user2, description: "Building is old but tall, parking is just outside on the street. First spot", title: "Best location in all of, Tel Aviv-Yafo, Israel!", address: 'Betzalel Yafe 7, Tel Aviv-Yafo, Israel')
ParkingSpot.create(user: dean, description: "This location is prime, close to everything. The spot is just outside of the building", title: "Park here!", address: 'Ben Gurion 12, Tel Aviv-Yafo, Israel')
ParkingSpot.create(user: user2, description: "Under the office buildings, floor -2, row B, spot 3", title: "King Geoge Parking(3)", address: 'King Geoge St. 97, Tel Aviv-Yafo, Israel')
ParkingSpot.create(user: user2, description: "Under the office buildings, floor -2, row B, spot 2", title: "King Geoge Parking(2)", address: 'King Geoge St. 97, Tel Aviv-Yafo, Israel')
ParkingSpot.create(user: user2, description: "Under the office buildings, floor -2, row B, spot 1", title: "King Geoge Parking(1)", address: 'King Geoge St. 97, Tel Aviv-Yafo, Israel')
ParkingSpot.create(user: user3, description: "Parking is just around the corner. Right most corner of the lot", title: "Frequently Available!", address: 'Dov Hoz St 1, Tel Aviv-Yafo, Israel')
ParkingSpot.create(user: user3, description: "Parking is outside on the left, two spots in", title: "Beachside Parking", address: 'HaYarkon St 22, Tel Aviv-Yafo, Israel')




