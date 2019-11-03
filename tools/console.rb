# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

jonah = Lifter.new("Jonah", 100)
adam = Lifter.new("Adam", 50)
derek = Lifter.new("Derek", 200)

planet_fitness = Gym.new("Planet Fitness")
average_joes = Gym.new("Average Joe's")
globo_gym = Gym.new("Globo Gym")

m1 = Membership.new(jonah, planet_fitness, 25)
m2 = Membership.new(jonah, average_joes, 20)
m3 = Membership.new(derek, globo_gym, 75)
m4 = Membership.new(derek, average_joes, 30)
m5 = Membership.new(adam, globo_gym, 40)


binding.pry

puts "Gains!"
