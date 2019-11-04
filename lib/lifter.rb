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
    Membership.all.select do |each|
      each if each.lifter == self
    end
  end

  def gyms
    self.memberships.map do |each|
      each.gym 
    end
  end

  def self.avg_lift
    sum = 0
    self.all.each do |each|
     sum += each.lift_total
    end
    sum/self.all.count
  end

  def sign_up(gym, cost)
    Membership.new(self, gym, cost)
  end



end

