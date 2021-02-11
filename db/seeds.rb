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

puts "Creating demo user/Chii"
User.create!(
  name: "Chii Law",
  email: "cyee3012@hotmail.co.uk",
  password: '123456'
)

puts "Creating demo user/Mayu"
User.create!(
  name: "Chii Law",
  email: "mayu.miyoshi1313@gmail.com",
  password: '123456'
)

puts "Creating demo user/Albin"
User.create!(
  name: "Chii Law",
  email: "fabianalbin7@gmail.com",
  password: '123456'
)

puts "Creating benchmark pics..."
5.times do
  Position.create!(
    user: User.sample,
    description: internship_description.sample,
    title: internship_title.sample,
    salary: "#{rand(800..1000)} Yen",
    duration: "#{rand(1..12)} months"
  )
end
