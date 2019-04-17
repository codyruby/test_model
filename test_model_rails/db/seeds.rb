# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Efface le contenu de la table users 
require 'faker'

User.destroy_all

# # Crée 100 nouveaux users
# 100.times do |index|
#     User.create(first_name: "Nom#{index}", email: "email#{index}@example.com")
#   end

# puts "100 nouveaux utilisateurs ont été créés"

# Crée 100 nouveaux users avec la gem faker
100.times do
  user = User.create!(first_name: Faker::Name.first_name, email: Faker::Internet.email)
end