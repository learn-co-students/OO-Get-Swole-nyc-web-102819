# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

lifter1 = Lifter.new("Albert", 100)
lifter2 = Lifter.new("Bob", 200)
lifter3 = Lifter.new("Chris", 350)

gym1 = Gym.new("Gym1")
gym2 = Gym.new("Gym2")
gym3 = Gym.new("Gym3")

mem1 = Membership.new(20, lifter1, gym1)
mem2 = Membership.new(40, lifter1, gym2)
mem3 = Membership.new(30, lifter1, gym3)
mem4 = Membership.new(25, lifter2, gym1)
mem5 = Membership.new(15, lifter3, gym3)

binding.pry

puts "Gains!"
