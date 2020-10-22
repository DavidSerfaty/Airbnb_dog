require 'faker'

Dog.destroy_all
Dogsitter.destroy_all
City.destroy_all

dogs = Array.new
dogsitters = Array.new
cities = Array.new

10.times do
  city = City.create(name: Faker::Address.city)
  cities << city
end
puts "10 villes créées"

30.times do
  dogsitter = Dogsitter.create(name: Faker::Name.first_name, city: cities.sample)
  dog =  Dog.create(name: Faker::Creature::Dog.name, city: cities.sample)
  dogsitters << dogsitter
  dogs << dog
end
puts "30 dogsitter et 30 dogs créés"


30.times do
  stroll = Stroll.create!(dogsitter: dogsitters.sample, dog: dogs.sample)
end

puts "30 strolls créées"
