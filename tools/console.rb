
require_relative '../config/environment.rb'

danny = Lifter.new("Danny", 1000)
jessy = Lifter.new("Jessy", 1200)
bobby = Lifter.new("Bobby", 1500)

dusty_dumbbells = Gym.new("Dusty Dumbbells")
beer_belly = Gym.new("Beer Belly")
zero_stamina = Gym.new("Zero Stamina")
couch_masters = Gym.new("Couch Masters")

memb1 = danny.new_membership(dusty_dumbbells, 100)
memb2 = jessy.new_membership(beer_belly, 110)
memb3 = bobby.new_membership(zero_stamina, 90)
memb4 = danny.new_membership(couch_masters, 70)
memb5 = jessy.new_membership(zero_stamina, 90)
memb6 = danny.new_membership(beer_belly, 110)
memb7 = bobby.new_membership(dusty_dumbbells, 100)


binding.pry

puts "Gains!"
