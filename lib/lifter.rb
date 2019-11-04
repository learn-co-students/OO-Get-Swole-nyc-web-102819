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

  def memberships
    Membership.all.select do |membership|
      membership.lifter == self
    end
  end

  def gyms
    memberships.map do |membership|
      membership.gym
    end
  end

  def self.average_lift_total
    total = self.all.reduce(0.0) do |sum, i|
      sum + i.lift_total
    end
    total / self.all.length
  end

  def total_cost_of_memberships
    memberships.reduce(0.0) do |sum, i|
      sum + i.cost
    end
  end

  def new_membership(gym, cost)
    Membership.new(self, gym, cost)
  end

end
