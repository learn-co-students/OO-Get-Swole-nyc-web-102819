# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

lifter1 = Lifter.new("joe", 400)
lifter2 = Lifter.new("adam", 350)
gym1 = Gym.new("joe's gym")
gym2 = Gym.new("adam's gym")
membership1 = Membership.new(lifter1, gym1, 10000)
membership2 = Membership.new(lifter2, gym1, 10000)
membership3 = Membership.new(lifter1, gym2, 500)

binding.pry

puts "Gains!"
