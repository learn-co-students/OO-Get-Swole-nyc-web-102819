class Membership
  attr_reader :cost, :gym, :lifter
  #Membership must also take a gym and a lifter
  @@all = []
  def initialize(cost,gym,lifter)
    @cost = cost
    @gym = gym
    @lifter = lifter

    @@all << self
  end

  def self.all
    @@all
  end

  





end
