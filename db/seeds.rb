# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

#clear DB
require 'date'

puts "Cleaning old Database"
puts "Deleting Users, Bikes, Bookings and Ratings"
Booking.destroy_all
Bike.destroy_all
User.destroy_all

puts "Creating User: Jonas"

user_1 = User.new(first_name: "Jonas", last_name: "Hagedorn", email: "hagedorn.j@email.de", password: "PWjonas")
user_1.save!

puts "Creating two bikes for Jonas"

file_1 = URI.open('https://images.unsplash.com/photo-1503669678209-c68d00b3765d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80')
file_2 = URI.open('https://images.unsplash.com/photo-1496147539180-13929f8aa03a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDF8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
file_3 = URI.open('https://images.unsplash.com/photo-1532298229144-0ec0c57515c7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDR8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
file_4 = URI.open('https://images.unsplash.com/photo-1496147433903-1e62fdb6f4be?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDV8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
file_5 = URI.open('https://images.unsplash.com/photo-1499438075715-fc23ef376ab9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDZ8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60')

img = [file_1, file_2, file_3, file_4, file_5]


bike_1 = Bike.new(name: "BMX 2000", description: "The Yoof 14” is the newest addition to the Yoof range from Jet BMX. The 14” frame & wheels make this bike a perfect fit for smaller riders that are needing a bigger bike than their current Balance or 12” pedal bike. The Jr size grips, seat, pedals & brake setup make this bike an ideal first bike at a great affordable price. Features include: pro spec geometry hi ten steel frame with top tube gusset, 6.5” steel bars, 9t Semi sealed cassette hub, 2.0” Innova tyres & much more.", category: "Mountain bike", location: "Stuttgarter Str. 60, 12059 Berlin")
img.each_with_index do |image, index|
  bike_1.photos.attach(io: image, filename: "bike_1_#{index}.jpg", content_type: 'image/jpg')
end
bike_1.user = user_1
bike_1.save!


file_1 = URI.open('https://images.unsplash.com/photo-1573505820103-bdca39cc6ddc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80')
file_2 = URI.open('https://images.unsplash.com/reserve/2jEqzi01Ru2HBhGLTBgB_MG_5236.jpg?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80')
file_3 = URI.open('https://images.unsplash.com/photo-1512077419241-842bcfdeaf30?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8eWVsbG93JTIwYmlrZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')
file_4 = URI.open('https://images.unsplash.com/photo-1553883692-67afa69bd1c4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80')
file_5 = URI.open('https://images.unsplash.com/photo-1573505820103-bdca39cc6ddc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80')

img = [file_1, file_2, file_3, file_4, file_5]

bike_2 = Bike.new(name: "BMX 3000", description: "The 2021 Fit Bike Co STR BMX Bike is designed to smash through the streets from big one line to the next. A 20.5 toptube, 12.6 chainstay, and 9 rise 4-piece bars contribute to creating the perfect street geometry for easy to pull manuals and 180's. Fully sealed bearings can take hard landings from big gaps and require less maintenance all while providing a super smooth ride. Fit threw their catalog at this bike including components from their lineup such as Fit Mack-PC pedals, Fit Key sprocket, Fit F/U 2.4 wide tires, and more. The Fit STR will help you to nail down those lines you've been looking at for so long.", category: "Mountain bike", location:"Stuttgarter Str. 60, 12059 Berlin")
img.each_with_index do |image, index|
  bike_2.photos.attach(io: image, filename: "bike_2_#{index}.jpg", content_type: 'image/jpg')
end
bike_2.user = user_1
bike_2.save!


puts "Creating User: Silke"

user_2 = User.new(first_name: "Silke", last_name: "Guthrie", email: "guthrie.s@email.de", password: "PWsilke")
user_2.save!

puts "Creating two bikes for Silke"

file_1 = URI.open('https://images.unsplash.com/photo-1549216963-72c1712c1196?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80')
file_2 = URI.open('https://images.unsplash.com/photo-1549216963-72c1712c1196?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80')
file_3 = URI.open('https://images.unsplash.com/photo-1549213584-422acae21034?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDZ8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
file_4 = URI.open('https://images.unsplash.com/photo-1578949678951-d4d4d390f582?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDExfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60')
file_5 = URI.open('https://images.unsplash.com/photo-1566255977387-e4888efb2159?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDF8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60')

img = [file_1, file_2, file_3, file_4, file_5]

bike_3 = Bike.new(name: "BMX 4000", description: "The Yoof 14” is the newest addition to the Yoof range from Jet BMX. The 14” frame & wheels make this bike a perfect fit for smaller riders that are needing a bigger bike than their current Balance or 12” pedal bike. The Jr size grips, seat, pedals & brake setup make this bike an ideal first bike at a great affordable price. Features include: pro spec geometry hi ten steel frame with top tube gusset, 6.5” steel bars, 9t Semi sealed cassette hub, 2.0” Innova tyres & much more.", category: "Mountain bike", location:"Überseeallee 5, 20457 Hamburg")
img.each_with_index do |image, index|
  bike_3.photos.attach(io: image, filename: "bike_3_#{index}.jpg", content_type: 'image/jpg')
end
bike_3.user = user_2
bike_3.save!

file_1 = URI.open('https://images.unsplash.com/photo-1526359395878-56f9a884ea5a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MnwzNTU1MzQyfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
file_2 = URI.open('https://images.unsplash.com/photo-1487803836022-91054ca05fdd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=667&q=80')
file_3 = URI.open('https://images.unsplash.com/photo-1512589134715-181b6d87984d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDEzfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60')
file_4 = URI.open('https://images.unsplash.com/photo-1525104325683-eb7d21279760?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE4fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60')
file_5 = URI.open('https://images.unsplash.com/photo-1526359395878-56f9a884ea5a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MnwzNTU1MzQyfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60')

img = [file_1, file_2, file_3, file_4, file_5]

bike_4 = Bike.new(name: "BMX 5000", description: "The Yoof 14” is the newest addition to the Yoof range from Jet BMX. The 14” frame & wheels make this bike a perfect fit for smaller riders that are needing a bigger bike than their current Balance or 12” pedal bike. The Jr size grips, seat, pedals & brake setup make this bike an ideal first bike at a great affordable price. Features include: pro spec geometry hi ten steel frame with top tube gusset, 6.5” steel bars, 9t Semi sealed cassette hub, 2.0” Innova tyres & much more.", category: "Mountain bike", location:"Überseeallee 5, 20457 Hamburg")
img.each_with_index do |image, index|
  bike_4.photos.attach(io: image, filename: "bike_4_#{index}.jpg", content_type: 'image/jpg')
end
bike_4.user = user_2
bike_4.save!

bike_4.user = user_2
bike_4.save!

puts "Creating User: Caterina"

user_3 = User.new(first_name: "Caterina", last_name: "Biffis", email: "biffis.c@email.de", password: "PWcaterina")
user_3.save!

puts "Creating two bikes for Caterina"

file_1 = URI.open('https://images.unsplash.com/photo-1572853591097-89c78c5dd1e3?ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE2fHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')
file_2 = URI.open('https://images.unsplash.com/photo-1601196892039-b39ab7f3a628?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fG1vdW50YWluYmlrZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')
file_3 = URI.open('https://images.unsplash.com/photo-1601196484466-06780294257a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDJ8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
file_4 = URI.open('https://images.unsplash.com/photo-1601196926572-a251b7193e89?ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDF8fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')
file_5 = URI.open('https://images.unsplash.com/photo-1601196470661-92f96a6f9d35?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDZ8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60')

img = [file_1, file_2, file_3, file_4, file_5]

bike_5 = Bike.new(name: "TCR ADVANCED PRO DISC 1", description: "Climb, corner and descend with unrivalled all-rounder performance. From the mountains to the flats, in all types of conditions, the new TCR Advanced Pro Disc takes it to the next level with a lighter, stiffer frame and new aero-engineered tubing.", category: "Gravel bike", location:"Via Santa Caterina 604, 31100 Treviso TV")
img.each_with_index do |image, index|
  bike_5.photos.attach(io: image, filename: "bike_5_#{index}.jpg", content_type: 'image/jpg')
end
bike_5.user = user_3
bike_5.save!

file_1 = URI.open('https://images.unsplash.com/photo-1603399301857-4871de8d64d9?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80')
file_2 = URI.open('https://images.unsplash.com/photo-1572241290603-045e283d3dde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDh8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
file_3 = URI.open('https://images.unsplash.com/photo-1530143584546-02191bc84eb5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDEwfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60')
file_4 = URI.open('https://images.unsplash.com/photo-1501147830916-ce44a6359892?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXxuUXh0NG9JXy13QXx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60')
file_5 = URI.open('https://images.unsplash.com/photo-1506510015403-9f36864c99d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDEwfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60')

img = [file_1, file_2, file_3, file_4, file_5]

bike_6 = Bike.new(name: "EASE-E+ 2 LOW STEP THROUGH ELECTRIC BIKE", description: "CCommit to everyday rides for fitness and fun. With its classic looks and modern technologies, this comfortable E-bike makes it all possible.", category: "E Bike", location:"Via Santa Caterina 604, 31100 Treviso TV")
img.each_with_index do |image, index|
  bike_6.photos.attach(io: image, filename: "bike_6_#{index}.jpg", content_type: 'image/jpg')
end
bike_6.user = user_3
bike_6.save!

puts "Creating User: Sebastian"

user_4 = User.new(first_name: "Sebastian", last_name: "Strube", email: "strube.s@email.de", password: "PWsebastian")
user_4.save!

puts "Creating two bikes for Sebastian"

file_1 = URI.open('https://images.unsplash.com/photo-1511116569395-6a72c7132696?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE4fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60')
file_2 = URI.open('https://images.unsplash.com/photo-1533235333150-35b370ff19d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDIwfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60')
file_3 = URI.open('https://images.unsplash.com/photo-1566113315335-8791bfbd717d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE5fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60')
file_4 = URI.open('https://images.unsplash.com/photo-1549383661-540a4bbccbc6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE2fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60')
file_5 = URI.open('https://images.unsplash.com/photo-1545465270-b28c72a628f9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE0fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60')

img = [file_1, file_2, file_3, file_4, file_5]

bike_7 = Bike.new(name: "FATHOM E+ 3 ELECTRIC BIKE", description: "Take control of the trail with this fun new hardtail E-bike. Now you can climb with greater ease and comfort, and ride farther—the perfect formula for an enjoyable day on the trail.", category: "Mountain bike", location:"Am Wassertempel 2, 60599 Frankfurt")
img.each_with_index do |image, index|
  bike_7.photos.attach(io: image, filename: "bike_7_#{index}.jpg", content_type: 'image/jpg')
end
bike_7.user = user_4
bike_7.save!

file_1 = URI.open('https://images.unsplash.com/photo-1596738141905-51e94b519d69?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDZ8fG1vdW50YWluJTIwYmlrZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')
file_2 = URI.open('https://images.unsplash.com/photo-1572111504021-40abd3479ddb?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80')
file_3 = URI.open('https://images.unsplash.com/photo-1435226148432-67c26cc5cbaf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8bW91bnRhaW5iaWtlJTIwZGV0YWlsc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60')
file_4 = URI.open('https://images.unsplash.com/photo-1585935008406-54e15f08e824?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTh8fG1vdW50YWluJTIwYmlrZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')
file_5 = URI.open('https://images.unsplash.com/photo-1578230338972-a3d85dcc3860?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzF8fG1vdW50YWluJTIwYmlrZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')

img = [file_1, file_2, file_3, file_4, file_5]

bike_8 = Bike.new(name: "TRINITY ADVANCED PRO 2", description: "When you're chasing a new PR, every advantage counts. Aerodynamics, efficiency, comfort and it—it all has to be just right. Engineered to meet the demands of professional triathletes and time trial racers, this speeding bullet has it all.", category: "Triathlon bike", location:"Am Wassertempel 2, 60599 Frankfurt")
img.each_with_index do |image, index|
  bike_8.photos.attach(io: image, filename: "bike_8_#{index}.jpg", content_type: 'image/jpg')
end
bike_8.user = user_4
bike_8.save!



puts "Create bookings"

50.times do

  random_user = User.all.sample
  random_bike = Bike.all.sample
  random_start_date = Date.new(2021,(rand 1..12),(rand 1..25))
  random_end_date = random_start_date + (rand 3..60)

  if random_user != random_bike.user

    booking = Booking.new(bike: random_bike, user: random_user, start_date: random_start_date, end_date: random_end_date)

    booking.save!

  end

end


