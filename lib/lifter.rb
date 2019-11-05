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

  def lifter_mems
    Membership.all.select do |mem|
      mem.lifter == self
    end
  end

  def lifter_gyms
    lifter_mems.map do |mem|
      mem.gym
    end
  end

  def self.lift_total
    @@all.map do |lifter|
      lifter.lift_total
    end.reduce(:+).to_f / @@all.count
  end

  def lifter_gym_cost_total
    lifter_mems.map do |mem|
      mem.cost
    end.reduce(:+).to_f
  end

  def lifter_signup(gym, cost)
    Membership.new(cost, self, gym)
  end
end
