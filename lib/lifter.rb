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
    Membership.all.select do |mems| 
      mems.lifter == self
    end
  end

  def my_gyms
    my_memberships.map do |mems|
      mems.gym
    end
  end

  def self.lift_total 
    lift_tot = self.all.map do |lifters|
      lifters.lift_total
    end
    lift_tot.sum / lift_tot.count
  end

  def total_membership_cost
    cost_array = my_memberships.map do |mems|
      mems.cost
    end
    cost_array.sum
  end

  def sign_up(gym, cost)
    Membership.new(self, gym, cost)
  end


end
