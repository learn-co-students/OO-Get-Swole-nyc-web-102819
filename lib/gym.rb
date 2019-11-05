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

  def gym_mems
    Membership.all.select do |mem|
      mem.gym == self
    end
  end

  def gym_lifters
    gym_mems.map do |mem|
      mem.lifter
    end
  end

  def gym_lifters_names
    gym_lifters.map do |lifter|
      lifter.name
    end
  end

  def gym_lifters_lift_totals
    gym_lifters.map do |lifter|
      lifter.lift_total
    end.reduce(:+).to_f
  end

end
