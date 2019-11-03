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
    # Get a list of all memberships at a specific gym
    Membership.all.select do |membership|
      membership.gym == self
    end
  end

  def lifters
    # returns all lifters of membership insatnces for a specific gym
    self.memberships.map do |member|
      member.lifter
    end
  end

  def member_names
    self.lifters.map do |lifter|
      lifter.name
    end
  end

  def combined_lift_total
    lift_total = self.lifters.map do |lifter|
      lifter.lift_total
    end
    lift_total.inject(0){|sum,x| sum + x }
  end

end
