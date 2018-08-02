# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Feature.destroy_all
Resort.destroy_all
User.destroy_all

user1 = User.create!(email:'email@email.com', password:'password', is_owner: "False")

feature1 = Feature.create(name: 'Surfing')
feature1 = Feature.create(name: 'Yoga')
feature1 = Feature.create(name: 'Eco')
feature1 = Feature.create(name: 'Vegan')

resort1 = Resort.create(user: user1, name: 'A Resort', continent: 'Asia', country: 'China', address: '123 Place, Shanghai', website: 'http://www.china.com/', image: 'https://pix10.agoda.net/hotelImages/334/334882/334882_14061609470019861047.jpg?s=1024x768', price: '100', description: 'China resort description')
resort2 = Resort.create(user: user1, name: 'B Resort', continent: 'Asia', country: 'Indonesia', address: '123 Place, Jakata', website: 'http://www.indonesia.com/', image: 'https://pix10.agoda.net/hotelImages/334/334882/334882_14061609470019861047.jpg?s=1024x768', price: '50', description: 'Indonesia resort description')
resort3 = Resort.create(user: user1, name: 'C Resort', continent: 'Europe', country: 'France', address: '123 Place, Nice', website: 'http://www.france.com/', image: 'https://pix10.agoda.net/hotelImages/334/334882/334882_14061609470019861047.jpg?s=1024x768', price: '150', description: 'France resort description')
resort4 = Resort.create(user: user1, name: 'D Resort', continent: 'South America', country: 'Bolivia', address: '123 Place, La Paz', website: 'http://www.bolivia.com/', image: 'https://pix10.agoda.net/hotelImages/334/334882/334882_14061609470019861047.jpg?s=1024x768', price: '30', description: 'Bolivia resort description')


resort1.features << Feature.all.sample
resort2.features << Feature.all.sample
resort3.features << Feature.all.sample
resort4.features << Feature.all.sample
