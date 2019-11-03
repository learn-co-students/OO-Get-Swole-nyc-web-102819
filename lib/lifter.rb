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
    # Get a list of all the memberships that a specific lifter has
    Membership.all.select do |contract|
      contract.lifter == self 
    end
  end

  def all_gyms_per_lifter
    # get a list of all the memberships
    # get just the gym names and return in new array
    # i.e.  nyc.gym.name => "Lifetime"
    self.memberships.map do |membership|
      membership.gym.name
    end
  end

  def sign_me_up(gym,cost)
    # we're calling this method on instamce of lifters
    # cost,gym,lifter
    Membership.new(cost,gym,self)
  end

  def total_cost_per_lifter
    sum = self.memberships.map do |membership|
      membership.cost
    end
    sum.inject(0){|sum,x| sum + x }
  end

  def self.avg_lift_total
    average = self.all.map do |lifter|
      lifter.lift_total
    end
    average.inject(0.0) { |sum, el| sum + el } / average.size
  end




end
