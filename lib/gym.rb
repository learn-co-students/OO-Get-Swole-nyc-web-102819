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

  def my_memberships
    Membership.all.select do |mems| 
      mems.gym == self
    end
  end

  def my_lifters
    my_memberships.map do |mems|
      mems.lifter
    end
  end

  def my_lifter_names
    my_lifters.map do |lif|
      lif.name 
    end
  end

  def my_lifters_lift_totals
    lift_amount = my_lifters.map do |lif|
      lif.lift_total
    end
    lift_amount.sum
  end

end
