class Gym
  attr_reader :name
  attr_accessor :lifter, :membership

@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

#list of all gyms
  def self.all
    @@all
  end

#list of all membersips at specific gym
  def memberships
    Membership.all.select do |member|
      member.gym == self
    end
  end

#list of all lifters that have a membership to a specific gym
  def lifter_memberships
    memberships.map do |member|
      member.lifter
    end
  end

#list of all lifter names who have memberships to that gym
  def lifter_names
    memberships.map do |member|
      member.lifter.name
     end
  end

#combined lift total of every lifter who belongs to the gym
  def lift_total
    weight = memberships.map do |member|
        member.lifter.lift_total
       end
       total = weight.inject(0) do |num, i|  num + i 
       end
       total
  end

end
