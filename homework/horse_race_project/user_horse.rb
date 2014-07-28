def horse_speed
  rand(1..3).to_i
end

class UserHorse 
  @@user_horse_list = []

  attr_accessor :name
  attr_accessor :speed
  attr_accessor :symbol
  attr_accessor :turn_count

  def initialize
    self.name = nil
    self.speed = nil
    self.symbol = nil
    self.turn_count = nil
  end

  def display_data
    p self.name,
    "#{self.name} #{self.speed} #{self.symbol} #{self.turn_count}"
  end

  def self.add_user(*user_attributes)
    user = UserHorse.new
    user.name = user_attributes[0]  
    user.speed = user_attributes[1]
    user.symbol = user_attributes[2]
    user.turn_count = user_attributes[3]
    @@user_horse_list.push user
    user
  end

  def self.display_uhorses
      puts @@user_horse_list
    end
end










