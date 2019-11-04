class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def my_memberships
    Membership.all.select {|membership_obj| membership_obj.lifter == self}
  end  

  def my_gyms
    self.my_memberships.map {|membership_obj| membership_obj.gym}
  end

  def self.lift_average
    unique_lifters = Membership.all.map {|membership_obj| membership_obj.lifter}.uniq
    lifter_weights = unique_lifters.map {|lifter_obj| lifter_obj.lift_total}
    lifter_weights.sum / lifter_weights.length.to_f
  end

  def my_gym_cost
    self.my_memberships.map {|membership_obj| membership_obj.cost}.sum
  end

  def new_membership(gym, cost)
    Membership.new(self, gym, cost)
  end

end
