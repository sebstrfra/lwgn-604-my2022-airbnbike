# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#clear DB
puts "Cleaning old Database"
puts "Deleting Users, Bikes, Bookings and Ratings"
User.destroy_all

puts "Creating User: Jonas"

user_1 = User.new(first_name: "Jonas", last_name: "Hagedorn", email: "hagedorn.j@email.de", password: "PWjonas")
user_1.save!

puts "Creating two bikes for Jonas"

bike_1 = Bike.new(name: "BMX 2000", description: "The Yoof 14” is the newest addition to the Yoof range from Jet BMX. The 14” frame & wheels make this bike a perfect fit for smaller riders that are needing a bigger bike than their current Balance or 12” pedal bike. The Jr size grips, seat, pedals & brake setup make this bike an ideal first bike at a great affordable price. Features include: pro spec geometry hi ten steel frame with top tube gusset, 6.5” steel bars, 9t Semi sealed cassette hub, 2.0” Innova tyres & much more.", category: "Mountain bike", location: "Berlin", picture_link: "https://upload.wikimedia.org/wikipedia/commons/b/b6/Tyler_on_his_pink_BMX_%288048750942%29.jpg")
bike_1.user = user_1
bike_1.save!

bike_2 = Bike.new(name: "BMX 3000", description: "The 2021 Fit Bike Co STR BMX Bike is designed to smash through the streets from big one line to the next. A 20.5 toptube, 12.6 chainstay, and 9 rise 4-piece bars contribute to creating the perfect street geometry for easy to pull manuals and 180's. Fully sealed bearings can take hard landings from big gaps and require less maintenance all while providing a super smooth ride. Fit threw their catalog at this bike including components from their lineup such as Fit Mack-PC pedals, Fit Key sprocket, Fit F/U 2.4 wide tires, and more. The Fit STR will help you to nail down those lines you've been looking at for so long.", category: "Mountain bike", location:"Berlin", picture_link:"https://www.wikihow.com/Do-BMX-Tricks#/Image:Do-BMX-Tricks-Step-01-Version-2.jpg")
bike_2.user = user_1
bike_2.save!

puts "Creating User: Silke"

user_2 = User.new(first_name: "Silke", last_name: "Guthrie", email: "guthrie.s@email.de", password: "PWsilke")
user_2.save!

puts "Creating two bikes for Silke"

bike_3 = Bike.new(name: "BMX 4000", description: "The Yoof 14” is the newest addition to the Yoof range from Jet BMX. The 14” frame & wheels make this bike a perfect fit for smaller riders that are needing a bigger bike than their current Balance or 12” pedal bike. The Jr size grips, seat, pedals & brake setup make this bike an ideal first bike at a great affordable price. Features include: pro spec geometry hi ten steel frame with top tube gusset, 6.5” steel bars, 9t Semi sealed cassette hub, 2.0” Innova tyres & much more.", category: "Mountain bike", location:"Berlin", picture_link:"https://upload.wikimedia.org/wikipedia/commons/0/09/Bike_gary_fisher_roscoe_one.JPG")
bike_3.user = user_2
bike_3.save!

bike_4 = Bike.new(name: "BMX 5000", description: "The Yoof 14” is the newest addition to the Yoof range from Jet BMX. The 14” frame & wheels make this bike a perfect fit for smaller riders that are needing a bigger bike than their current Balance or 12” pedal bike. The Jr size grips, seat, pedals & brake setup make this bike an ideal first bike at a great affordable price. Features include: pro spec geometry hi ten steel frame with top tube gusset, 6.5” steel bars, 9t Semi sealed cassette hub, 2.0” Innova tyres & much more.", category: "Mountain bike", location:"Berlin", picture_link:"https://upload.wikimedia.org/wikipedia/commons/b/b5/Rider_gary_fisher_roscoe.JPG")
bike_4.user = user_2
bike_4.save!

puts "Creating User: Caterina"

user_3 = User.new(first_name: "Caterina", last_name: "Biffis", email: "biffis.c@email.de", password: "PWcaterina")
user_3.save!

puts "Creating two bikes for Caterina"

bike_5 = Bike.new(name: "TCR ADVANCED PRO DISC 1", description: "Climb, corner and descend with unrivalled all-rounder performance. From the mountains to the flats, in all types of conditions, the new TCR Advanced Pro Disc takes it to the next level with a lighter, stiffer frame and new aero-engineered tubing.", category: "Gravel bike", location:"Munich", picture_link:"https://images.giant-bicycles.com/b_white,c_pad,h_650,q_80/s6bjx4zfulwvnkstmmwu/MY21-TCR-ADPRO-1-D-KOM_Color-A-Rosewood.jpg")
bike_5.user = user_3
bike_5.save!

bike_6 = Bike.new(name: "EASE-E+ 2 LOW STEP THROUGH ELECTRIC BIKE", description: "CCommit to everyday rides for fitness and fun. With its classic looks and modern technologies, this comfortable E-bike makes it all possible.", category: "E Bike", location:"Frankfurt", picture_link:"https://images.giant-bicycles.com/b_white,c_pad,h_650,q_80/xu4dlxepurw2ieeww9tg/MY22-Ease-E+2-For-UK.jpg")
bike_6.user = user_3
bike_6.save!

puts "Creating User: Sebastian"

user_4 = User.new(first_name: "Sebastian", last_name: "Strube", email: "strube.s@email.de", password: "PWsebastian")
user_4.save!

puts "Creating two bikes for Caterina"

bike_7 = Bike.new(name: "FATHOM E+ 3 ELECTRIC BIKE", description: "Take control of the trail with this fun new hardtail E-bike. Now you can climb with greater ease and comfort, and ride farther—the perfect formula for an enjoyable day on the trail.", category: "Mountain bike", location:"Cologne", picture_link:"https://images.giant-bicycles.com/b_white,c_pad,h_650,q_80/ibglhgnfaqd4loxipr0m/MY21-Fathom-E+-3-_Color-A.jpg")
bike_7.user = user_4
bike_7.save!

bike_8 = Bike.new(name: "TRINITY ADVANCED PRO 2", description: "When you're chasing a new PR, every advantage counts. Aerodynamics, efficiency, comfort and it—it all has to be just right. Engineered to meet the demands of professional triathletes and time trial racers, this speeding bullet has it all.", category: "Triathlon bike", location:"Hamburg", picture_link:"https://images.giant-bicycles.com/b_white,c_pad,h_650,q_80/mge3xkspxfavngpte8i9/MY21TRIADPRO2_ColorACarbon.jpg")
bike_8.user = user_4
bike_8.save!