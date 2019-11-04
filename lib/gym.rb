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

  def all_memberships
    Membership.all.select do |each|
      each if each.gym == self
    end
  end

  def all_lifters
    self.all_memberships.map do |each|
      each.lifter 
    end
  end

  def all_lifters_names
    self.all_lifters.map do |each|
      each.name
    end
  end

  def total_lift
    sum = 0
    self.all_lifters.map do |each|
      sum += each.lift_total
    end
    sum
  end


end

