########################## Deleting models ##########################
puts "Cleaning Database..."
Notification.destroy_all
Booking.destroy_all
Review.destroy_all
ParkingSpot.destroy_all
Account.destroy_all
User.destroy_all

########################## Making Users and Accounts ##########################
puts 'Creating Users...'

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
puts "Creating Parking Spots....."
parkingspot1 = ParkingSpot.new(user: user1, description: "Located at end of the first floor, row C", title: "Best Parking in Tel Aviv", price: 20, address: 'Allenby 24, Tel Aviv-Yafo, Israel')
parkingspot1.remote_photo_url = 'http://1.bp.blogspot.com/-e4v0DH3xkHk/VPU_c5Df0kI/AAAAAAAAEyc/YGKbG65bEV4/s1600/reserved.jpg'
parkingspot1.save!
parkingspot2 = ParkingSpot.new(user: alisa, description: "Enter the garage, first spot to the right", title: "Very Good location", price: 20, address: 'Frishman 29, Tel Aviv-Yafo, Israel')
parkingspot2.remote_photo_url = 'https://www.pymnts.com/wp-content/uploads/2018/03/parkingspot.jpg'
parkingspot2.save!
parkingspot3 = ParkingSpot.new(user: brad, description: "Parking is outside, on the left of the apartment building", title: "Close to the Shuk!", price: 20, address: 'Nahalat Binyamin 2, Tel Aviv-Yafo, Israel')
parkingspot3.remote_photo_url = 'https://user-assets.sharetribe.com/images/listing_images/images/1735250/big/parking_spot.jpeg?1537898309'
parkingspot3.save!
parkingspot4 = ParkingSpot.new(user: omer, description: "Under the office buldings, floor -1, row D, spot 2", title: "Walk to the beach!(2)", price: 20, address: 'Ben Yehuda 32, Tel Aviv-Yafo, Israel')
parkingspot4.remote_photo_url = 'http://websites.edealer.ca/subaruofniagara/shutterstock_154641665.jpg'
parkingspot4.save!
parkingspot5 = ParkingSpot.new(user: omer, description: "Under the office buldings, floor -1, row D, spot 1", title: "Walk to the beach!", price: 20, address: 'Ben Yehuda 32, Tel Aviv-Yafo, Israel')
parkingspot5.remote_photo_url = 'https://vz.cnwimg.com/wp-content/uploads/2019/07/spot.jpg'
parkingspot5.save!
parkingspot6 = ParkingSpot.new(user: david, description: "On right of the building, wierd plant at end of the spot", title: "Close to Kikar Rabin!", price: 20, address: 'Gordon 3, Tel Aviv-Yafo, Israel')
parkingspot6.remote_photo_url = 'https://www.fox13memphis.com/resizer/N_SgwUOes-lflSpS8WTeaDtLwfs=/1200x600/arc-anglerfish-arc2-prod-cmg.s3.amazonaws.com/public/S6VYLQMQ6WVGT5ET53X7RDZG2U.jpg'
parkingspot6.save!
parkingspot7 = ParkingSpot.new(user: user2, description: "Building is old but tall, parking is just outside on the street. First spot", title: "Best location in all of, Tel Aviv-Yafo, Israel!", price: 20, address: 'Betzalel Yafe 7, Tel Aviv-Yafo, Israel')
parkingspot7.remote_photo_url = 'https://i.chzbgr.com/full/8762787584/h8B1569F4/404-error-real-life-parking-spot'
parkingspot7.save!
parkingspot8 = ParkingSpot.new(user: dean, description: "This location is prime, close to everything. The spot is just outside of the building", title: "Park here!", price: 20, address: 'Ben Gurion 12, Tel Aviv-Yafo, Israel')
parkingspot8.remote_photo_url = 'https://blog.arlingtontransportationpartners.com/hs-fs/hubfs/ArlingtonTransportationPartners_May2016/Images/carpool-parking-spot.jpg?width=825&height=550&name=carpool-parking-spot.jpg'
parkingspot8.save!
parkingspot9 = ParkingSpot.new(user: user2, description: "Under the office buildings, floor -2, row B, spot 3", title: "King Geoge Parking(3)", price: 20, address: 'King Geoge St. 97, Tel Aviv-Yafo, Israel')
parkingspot9.remote_photo_url = 'https://media.golfdigest.com/photos/55ad7283b01eefe207f691e4/master/w_768/blogs-the-loop-assets_c-2014-08-tiger-woods-parking-space-518-thumb-518x472-137107.jpg'
parkingspot9.save!
parkingspot10 = ParkingSpot.new(user: user2, description: "Under the office buildings, floor -2, row B, spot 2", title: "King Geoge Parking(2)", price: 20, address: 'King Geoge St. 97, Tel Aviv-Yafo, Israel')
parkingspot10.remote_photo_url = 'https://res.cloudinary.com/accelevents/image/fetch/c_pad,dpr_3.0,h_400/https://s3.amazonaws.com/v2-s3-prod-accelevents/41e84f0b-9380-4ecc-8629-b17aebc93c4b_img_4447.jpg'
parkingspot10.save!
parkingspot11 = ParkingSpot.new(user: user2, description: "Under the office buildings, floor -2, row B, spot 1", title: "King Geoge Parking(1)", price: 20, address: 'King Geoge St. 97, Tel Aviv-Yafo, Israel')
parkingspot11.remote_photo_url = 'http://image.minyanville.com/assets/dailyfeed/uploadimage/120711/parking_garage__1323281212-cropped.jpg'
parkingspot11.save!
parkingspot12 = ParkingSpot.new(user: user3, description: "Parking is just around the corner. Right most corner of the lot", title: "Frequently Available!", price: 20, address: 'Dov Hoz St 1, Tel Aviv-Yafo, Israel')
parkingspot12.remote_photo_url = 'https://images.boredomfiles.com/wp-content/uploads/2019/01/empty-spot.jpg'
parkingspot12.save!
parkingspot13 = ParkingSpot.new(user: user3, description: "Parking is outside on the left, two spots in", title: "Beachside Parking", price: 20, address: 'HaYarkon St 22, Tel Aviv-Yafo, Israel')
parkingspot13.remote_photo_url = 'https://www.cityofaikensc.gov/wp-content/uploads/2017/04/parking_garage_spot.jpg'
parkingspot13.save!

parkingspot13 = ParkingSpot.new(user: david, description: "Parking in a great area, very quiet", title: "Old North Parking", price: 20, address: 'Remez 27, Tel Aviv Yafo, Israel')
parkingspot13.remote_photo_url = 'https://www.sdprimemtce.com/uploads/4/6/6/5/46657549/spot-12_orig.jpg'
parkingspot13.save!

parkingspot14 = ParkingSpot.new(user: brad, description: "Right by Arlozorov, just left of the red house", title: "Easy Parking", price: 30, address: 'Liberman 11 Tel Aviv Yafo, Israel')
parkingspot14.remote_photo_url = 'https://i.pinimg.com/originals/2a/a9/a3/2aa9a37d12f750f166d64cd10dbae626.jpg'
parkingspot14.save!

parkingspot15 = ParkingSpot.new(user: omer, description: "Right by Ibn Gvirol, near all the great restaurants", title: "Very Spacious Parking", price: 40, address: 'Modigliani 17 Tel Aviv Yafo, Israel')
parkingspot15.remote_photo_url = 'http://driving-tests.org/wp-content/uploads/2012/02/empty-space.jpg'
parkingspot15.save!

parkingspot16 = ParkingSpot.new(user: alisa, description: "In Montefiore, north part of it. Call the my number before parking", title: "By The Train", price: 50, address: 'Sderot Yehudit 30 Tel Aviv Yafo, Israel')
parkingspot16.remote_photo_url = 'https://previews.123rf.com/images/torsakarin/torsakarin1904/torsakarin190400133/121749071-empty-outdoor-car-parking-space-and-stone-block-wall.jpg'
parkingspot16.save!

parkingspot17 = ParkingSpot.new(user: omer, description: "Parking right by the beach, ideal for surfers who want to catch some waves", title: "Parking for surfers!", price: 20, address: 'Barnet St 5 Tel Aviv Yafo, Israel')
parkingspot17.remote_photo_url = 'https://marketplace.canva.com/MADF8K3kmYk/1/thumbnail_large/canva-empty-space-for-cars-%2Coutdoor-car-parking-MADF8K3kmYk.jpg'
parkingspot17.save!

parkingspot19 = ParkingSpot.new(user: user3, description: "Rare parking right by the shuk. Parking spot is behind the building", title: "In the Flea Market", price: 30, address: 'Rabbi Yohanan 5 Tel Aviv Yafo, Israel')
parkingspot19.remote_photo_url = 'https://streets.mn/wp-content/uploads/2015/02/P2011513.jpg'
parkingspot19.save!

parkingspot20 = ParkingSpot.new(user: user2, description: "Right by Park HaYarkon, by the ocean as well.", title: "On the park", price: 25, address: 'Ussishkin 13 Tel Aviv Yafo, Tel Aviv')
parkingspot20.remote_photo_url = 'https://t3.ftcdn.net/jpg/01/04/62/10/240_F_104621075_XN6DbMp7nDze511GbBsUNMv7pW5YRuWp.jpg'
parkingspot20.save!

parkingspot21 = ParkingSpot.new(user: user1, description: "Only parking you'll find right on Rothschild, by all the great bars", title: "On Rothschild!", price: 35, address: 'Rothschild Blvd 49 Tel Aviv Yafo, Israel')
parkingspot21.remote_photo_url = 'https://image1.masterfile.com/getImage/NjAwLTAwOTEyMTU2ZW4uMDAwMDAwMDA=AIvvi3/600-00912156en_Masterfile.jpg'
parkingspot21.save!

parkingspot22 = ParkingSpot.new(user: user3, description: "Great location, access to beach and to bars", title: "Near Dizengoff, Bars", price: 20, address: 'Jabotinsky 3 Tel Aviv Yafo, Israel')
parkingspot22.remote_photo_url = 'https://st2.depositphotos.com/4221109/12337/i/950/depositphotos_123374636-stock-photo-empty-parking-lot-in-car.jpg'
parkingspot22.save!





