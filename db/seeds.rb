# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
FinalPic.destroy_all
BenchmarkPic.destroy_all
User.destroy_all
Location.destroy_all

puts "Creating demo user/Chii"
User.create!(
  name: "Chii Law",
  email: "cyee3012@hotmail.co.uk",
  password: '123456'
)

puts "Creating demo user/Mayu"
User.create!(
  name: "Mayu Miyoshi",
  email: "mayu.miyoshi1313@gmail.com",
  password: '123456'
)

puts "Creating demo user/Albin"
User.create!(
  name: "Albin Ngawing",
  email: "fabianalbin7@gmail.com",
  password: '123456'
)

# puts "Creating benchmark pics..."
# 5.times do
#   Position.create!(
#     user: User.sample,
#     description: internship_description.sample,
#     title: internship_title.sample,
#     salary: "#{rand(800..1000)} Yen",
#     duration: "#{rand(1..12)} months"
#   )
# end


# seed a random picture
puts "Create a benchmark pic"
BenchmarkPic.create!(
  user: User.where(email:"fabianalbin7@gmail.com").first
  )

puts "creating location"
location = Location.create!(
  address: "Tokyo Station, Tokyo"
  )

puts "Creating final picture"
user = User.where(email:"fabianalbin7@gmail.com").first
final_pic = FinalPic.create!(
  location_id: location.id,
  user: user,
  benchmark_pic: BenchmarkPic.where(user: user).first
  )

photo = open("https://wallpapercave.com/wp/wp4312137.jpg")
final_pic.photo.attach(io: photo, filename: "photo.jpg")
final_pic.save

puts "Creating demo address_Le wagon"
lewagon = Location.create!(
  latitude: 35.6340257,
  longitude: 139.7091676,
  address: "Impact HUB Tokyo, Meguro"
)

final_pic = FinalPic.create!(
  location: lewagon,
  user: user,
  benchmark_pic: BenchmarkPic.where(user: user).first
  )

photo = open("https://res.cloudinary.com/dlzehsqej/image/upload/v1614404740/Image_from_iOS_1_ewf9k3.jpg")
final_pic.photo.attach(io: photo, filename: "photo.jpg")
final_pic.save

final_pic = FinalPic.create!(
  location: lewagon,
  user: user,
  benchmark_pic: BenchmarkPic.where(user: user).first
  )

photo = open("https://res.cloudinary.com/dlzehsqej/image/upload/v1614861429/hub2_topzpq.jpg")
final_pic.photo.attach(io: photo, filename: "photo.jpg")
final_pic.save

final_pic = FinalPic.create!(
  location: lewagon,
  user: user,
  benchmark_pic: BenchmarkPic.where(user: user).first
  )

photo = open("https://res.cloudinary.com/dlzehsqej/image/upload/v1614861429/hub3_idiowv.jpg")
final_pic.photo.attach(io: photo, filename: "photo.jpg")
final_pic.save

final_pic = FinalPic.create!(
  location: lewagon,
  user: user,
  benchmark_pic: BenchmarkPic.where(user: user).first
  )

photo = open("https://res.cloudinary.com/dlzehsqej/image/upload/v1614404740/Image_from_iOS_2_og9f6c.jpg")
final_pic.photo.attach(io: photo, filename: "photo.jpg")
final_pic.save

final_pic = FinalPic.create!(
  location: lewagon,
  user: user,
  benchmark_pic: BenchmarkPic.where(user: user).first
  )

photo = open("https://res.cloudinary.com/dlzehsqej/image/upload/v1614404740/Image_from_iOS_vgrbi2.jpg")
final_pic.photo.attach(io: photo, filename: "photo.jpg")
final_pic.save




puts "Creating demo address_Gandamu"
gandamu = Location.create!(
  latitude: 35.6249939,
  longitude: 139.7736169,
  address: "The Life-Sized Unicorn Gundam Statue, Odaiba"
)

final_pic = FinalPic.create!(
  location: gandamu,
  user: user,
  benchmark_pic: BenchmarkPic.where(user: user).first
  )

photo = open("https://res.cloudinary.com/dlzehsqej/image/upload/v1614858541/gamdum_kuvrkt.jpg")
final_pic.photo.attach(io: photo, filename: "photo.jpg")
final_pic.save

final_pic = FinalPic.create!(
  location: gandamu,
  user: user,
  benchmark_pic: BenchmarkPic.where(user: user).first
  )

photo = open("https://res.cloudinary.com/dlzehsqej/image/upload/v1614858606/gambum2_h4bqlt.jpg")
final_pic.photo.attach(io: photo, filename: "photo.jpg")
final_pic.save

puts "Creating demo address_Shibuya"
shibuya = Location.create!(
  latitude: 35.6588053,
  longitude: 139.7022041,
  address: "SHIBUYA SKY, Shibuya"
)

final_pic = FinalPic.create!(
  location: shibuya,
  user: user,
  benchmark_pic: BenchmarkPic.where(user: user).first
  )

photo = open("https://res.cloudinary.com/dlzehsqej/image/upload/v1614858930/shibuya_mxzvoi.jpg")
final_pic.photo.attach(io: photo, filename: "photo.jpg")
final_pic.save

final_pic = FinalPic.create!(
  location: shibuya,
  user: user,
  benchmark_pic: BenchmarkPic.where(user: user).first
  )

photo = open("https://res.cloudinary.com/dlzehsqej/image/upload/v1614858930/shibuya2_wr5lw1.jpg")
final_pic.photo.attach(io: photo, filename: "photo.jpg")
final_pic.save

puts "Creating demo address_Shinagawa"
shinagawa = Location.create!(
  latitude: 35.588476,
  longitude: 139.7353067,
  address: "Shinagawa Aquarium, Shinagawa"
)

final_pic = FinalPic.create!(
  location: shinagawa,
  user: user,
  benchmark_pic: BenchmarkPic.where(user: user).first
  )

photo = open("https://res.cloudinary.com/dlzehsqej/image/upload/v1614859337/shinagawa1_s9omff.jpg")
final_pic.photo.attach(io: photo, filename: "photo.jpg")
final_pic.save

final_pic = FinalPic.create!(
  location: shinagawa,
  user: user,
  benchmark_pic: BenchmarkPic.where(user: user).first
  )

photo = open("https://res.cloudinary.com/dlzehsqej/image/upload/v1614859332/shinagawa3_vjzlhb.jpg")
final_pic.photo.attach(io: photo, filename: "photo.jpg")
final_pic.save
