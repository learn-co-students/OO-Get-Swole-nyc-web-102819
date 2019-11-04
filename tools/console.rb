# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'



# create lifters (name, lift_total)
l1 = Lifter.new('lifter1', 100)
l2 = Lifter.new('lifter2', 200)
l3 = Lifter.new('lifter3', 300)

# create gyms (name)
g1 = Gym.new('gym1')
g2 = Gym.new('gym2')
g3 = Gym.new('gym3')

# create memberships (lifter, gym, cost)
m1 = Membership.new(l1, g1, 25)
m2 = Membership.new(l2, g2, 25)
m3 = Membership.new(l3, g3, 25)

# all lifters
lifters = Lifter.all #expect list of lifters

# all gyms
gyms = Gym.all #expect all gyms

# all memberships
memberships = Membership.all # expect all memberhsips

# all membership for lifter
mm1 = l1.memberships # expect m1
mm2 = l2.memberships # expect m2
mm3 = l3.memberships # expect m3

# all gyms for lifter 
gg1 = l1.gyms # expect gym1
gg2 = l2.gyms # expect gym2
gg3 = l3.gyms # expect gym3

# avg lift all lifters
avg = Lifter.avg_lift # expect 200


# lifter sign up for new gym
new1 = l1.sign_up(g2,50) # expect l1 to have 2 gym memberships(l1 & l2)

# all memberhips for gym
mg1 = g1.all_memberships # expect mm1
mg2 = g2.all_memberships # expect mm2 & mm1
mg3 = g3.all_memberships # ewxpewct mm3

# all lifters for gym
lg1 = g1.all_lifters # expect l1
lg2 = g2.all_lifters # expect l2 & l1
lg3 = g3.all_lifters # expect l3

# all lifter names for gym
lng1 = g1.all_lifters_names # expect lifter1
lng2 = g2.all_lifters_names # expect lifter 1 & lifter 2
lng3 = g3.all_lifters_names # expect lifter 3

# total lift of all lyfters for gym
t1 = g1.total_lift # expect 100
t2 = g2.total_lift # expect 300
t3 = g3.total_lift # expect 300

binding.pry

puts "Gains!"

