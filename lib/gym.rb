class Gym
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select do |membership|
      membership.gym == self
    end
  end

  def lifters
    memberships.collect do |membership|
      membership.lifter
    end
  end

  def lifters_names
    lifters.collect do |lifter|
      lifter.name
    end
  end

  def lifters_total_lifts
    memberships.reduce(0) do |sum, membership|
      sum + membership.lifter.lift_total
    end
  end
end
