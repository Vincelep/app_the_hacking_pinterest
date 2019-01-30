# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

User.destroy_all
Commentaire.destroy_all
Pin.destroy_all

10.times do 
  user = User.create!(name: Faker::Name.unique.name)
end

15.times do
  commentaire = Commentaire.create!(body: Faker::Movie.quote, user_id: (rand(User.first.id..User.last.id)))
end

15.times do
  pin = Pin.create!(image_url: Faker::Book.title, user_id: (rand(User.first.id..User.last.id)), commentaire_id: (rand(Commentaire.first.id..Commentaire.last.id)))
end