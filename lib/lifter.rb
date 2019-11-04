class Lifter
  attr_reader :name, :lift_total
  attr_accessor :gym

@@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

#average lift total of all lifters
  def self.avg_lift_total
    combined_weight = self.all.map do |num|
    num.lift_total
    end
     total = combined_weight.inject(0) do |num, i|  num + i 
     end
    divisor = self.all.length
    average = total / divisor 
    average
  end

#adds new instance to Membership
  def join_gym(cost, gym)
    Membership.new(cost, self, gym)
  end

#list of all lifters
  def self.all
      @@all
  end
  
#get a list of all the memberships a specific lifter has
  def memberships
    Membership.all.select do |member|
      member.lifter == self
    end
  end

#get a list of all the gyms that a specific lifter has memberships to
  def gyms
    gym_member = memberships.select do |member|
      member.lifter == self
      end
      gym_list = gym_member.map do |member|
      member.gym
      end
      gym_list
  end

#get total cost of specific lifter's gym membershps
  def membership_total_cost
    cost = memberships.map do |member|
        member.cost
      end
     total_cost = cost.inject(0) do |num, i|  num + i 
      end
      total_cost
  end

#adds new instance to Membership
  def join_gym(cost, gym)
  Membership.new(cost, self, gym)
  end

end
