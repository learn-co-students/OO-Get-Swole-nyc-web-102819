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
    Membership.all.select {|membership_obj| membership_obj.gym == self}
  end

  def my_lifters
    self.my_memberships.map {|membership_obj| membership_obj.lifter}
  end

  def my_lifters_names
    self.my_lifters.map {|lifter_obj| lifter_obj.name}
  end

  def my_lift_total
    self.my_lifters.map {|lifter_obj| lifter_obj.lift_total}.sum
  end
end
