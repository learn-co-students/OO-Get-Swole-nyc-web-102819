class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total

    @@all << self 
  end

  def memberships
    Membership.all.select { |memb| memb.lifter == self }
  end 

  def gyms
    memberships.map { |memb| memb.gym }
  end 

  def total_cost
    membership_costs = memberships.map { |memb| memb.cost }
    membership_costs.sum
  end 

  def get_membership(gym, cost)
    Membership.new(self, gym, cost)
  end 

  def self.all
    @@all 
  end 

  def self.lift_totals
    self.all.map { |lifter| lifter.lift_total }
  end 

  def self.average_lift_total
   lift_totals.sum.to_f / lift_totals.length.to_f
  end 



end
