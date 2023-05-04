# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'
Bromance.destroy_all
Tag.destroy_all
Potin.destroy_all
User.destroy_all
City.destroy_all

# Créer 10 villes avec Faker
10.times do
  City.create(
    name: Faker::Address.city,
    zip_code: Faker::Address.zip_code
  )
end

# Créer 10 utilisateurs avec Faker et les lier à une ville aléatoire
10.times do
  user = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    description: Faker::Lorem.paragraph,
    email: Faker::Internet.email,
    age: Faker::Number.between(from: 18, to: 65),
    city: City.all.sample
  )

  # Lier l'utilisateur à une ville aléatoire
  #city = City.all.sample
  #user.city = city
  #user.save
end

# Création des 10 tags
10.times do
  Tag.create(title: Faker::Lorem.word)
end


#boucle pour création de 20 potins + lier a l'auteur et aux tags
20.times do
  potin = Potin.create!(title: Faker::Lorem.sentence(word_count: 3), content: Faker::Lorem.sentence, user: User.all.sample)

  rand(2..5).times do
  potin.tags << Tag.all.sample
  end
end