def horse_speed
  rand(1..3).to_i
end

class Evil
  @@list_of_evil = []

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

    def self.add_evil(*evil_attributes)
      evil = Evil.new
      evil.name = evil_attributes[0]
      evil.speed = evil_attributes[1]
      evil.symbol = evil_attributes[2]
      evil.turn_count = evil_attributes[3]
      @@list_of_evil.push evil
      evil
    end

    def self.display_ehorses
      puts @@list_of_evil
    end
end 






