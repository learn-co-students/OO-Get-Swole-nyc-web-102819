# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

lifter1 = Lifter.new("Luke", 17)
lifter2 = Lifter.new("Alice", 23)
lifter3 = Lifter.new("Bob", 526)

gym1 = Gym.new("Gym 1")
gym2 = Gym.new("Gym 2")
gym3 = Gym.new("Gym 3")

membership1 = Membership.new(125, lifter1, gym1)
membership2 = Membership.new(230, lifter2, gym2)
membership3 = Membership.new(55, lifter3, gym3)
membership4 = Membership.new(55, lifter1, gym3)

binding.pry

puts "Gains!"
