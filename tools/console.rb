# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

ben = Lifter.new("Ben", 100)
jimmy = Lifter.new("Jimmy", 200)
bimmy = Lifter.new("Bimmy", 300)

globo_gym = Gym.new("Globo Gym")
average_joes = Gym.new("Average Joe's Gym")
planet_fitness = Gym.new("Planet Fitness")

m1 = Membership.new(50, bimmy, globo_gym)
m2 = Membership.new(10, bimmy, average_joes)
m3 = Membership.new(20, jimmy, planet_fitness)
m4 = Membership.new(10, jimmy, average_joes)
m5 = Membership.new(75, ben, globo_gym)

# test code goes here

binding.pry

puts "Gains!"
