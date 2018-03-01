# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Department.create(name: "Beer")

50.times do |i|
   name = Faker::Beer.name
   desc = Faker::Beer.style
   price = rand(5..20)
   dept_id = 1
   Item.create(name: name, desc: desc, price: price, department_id: dept_id)
 end

Item.where(department_id: 1).each do |item|
  10.times do |j|
    author = Faker::Overwatch.hero
    rating = rand(1..10)
    comment = Faker::Overwatch.quote
    Review.create(author: author, comment: comment, rating: rating, item_id: item.id)
  end
end
