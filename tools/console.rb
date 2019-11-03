# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

# new lifter instances
barak = Lifter.new("Barak", 185)
shalom = Lifter.new("Shalom",225)
jesse = Lifter.new("Jesse",210)
brandon = Lifter.new("Brandon",199)
tim = Lifter.new("Timmy",175)

# new gym instances
lifetime = Gym.new("Lifetime")
synergy = Gym.new("Synergy")
planet = Gym.new("Planet Fitness")
la = Gym.new("LA Fitness")

#new membership instances
weekend = Membership.new(145,lifetime,barak)
weekday = Membership.new(25,synergy,barak)
tuesdays = Membership.new(40,la,tim)
lazy = Membership.new(10,planet,brandon)
nyc = Membership.new(145,lifetime,jesse)


binding.pry

puts "Gains!"
