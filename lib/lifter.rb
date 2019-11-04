class Lifter
  attr_reader :name
  attr_accessor :lift_total
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_lifts
    self.all.reduce(0) do |sum, lifter|
      sum + lifter.lift_total
    end
  end

  def self.avg_lift_total
    self.total_lifts / self.all.length      
  end

  def memberships
    Membership.all.select do |membership|
      membership.lifter == self
    end
  end

  def total_cost
    memberships.reduce(0) do |sum, membership|
      sum + membership.cost
    end
  end

  def gyms
    memberships.collect do |membership|
      membership.gym
    end
  end
  
  def new_membership(cost, gym)
    Membership.new(cost, self, gym)
  end
end
