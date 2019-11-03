class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def memberships
    Membership.all.select { |memb| memb.gym == self }
  end 

  def lifters
    memberships.map { |memb| memb.lifter }
  end 

  def lifter_names
    lifters.map { |lifter| lifter.name }
  end 

  def lift_total
    lift_totals = lifters.map { |lifter| lifter.lift_total }
    lift_totals.sum
  end 

  def self.all
    @@all
  end 

end
