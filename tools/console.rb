# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
lifter1 = Lifter.new("bob", 100)
lifter2 = Lifter.new("sam", 1000)
lifter3 = Lifter.new("dave", 222)
lifter4 = Lifter.new("joe", 333)
lifter5 = Lifter.new("harry", 444)

gym1 = Gym.new("Golds")
gym2 = Gym.new("Equinox")
gym3 = Gym.new("Planet Fitness")

mem1 = Membership.new(lifter1, gym1, 100)
mem2 = Membership.new(lifter2, gym2, 200)
mem3 = Membership.new(lifter3, gym1, 500)




binding.pry

puts "Gains!"
