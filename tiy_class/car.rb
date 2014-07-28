=begin
 end
    def model=(value)
      puts "setter being called"
     @model = value
  end

  def model
    puts "getter being called"
    @model
  end
=end

class Car
  #class variable
  @@list_of_car = []

  attr_accessor :model
  attr_accessor :color
  attr_accessor :horsepower
  attr_accessor :year
  attr_accessor :brand
  attr_accessor :mpg
  attr_accessor :cupholders

  def initialize
    puts "A new Car was created"
    self.model = nil
    self.color = nil
    self.horsepower = nil
    self.year = nil
    self.brand = nil
    self.mpg = nil
    self.cupholders = nil
  end

  def display_data
    p self
      "#{self.model} #{self.color} #{self.horsepower} #{self.year}
        #{self.brand} #{self.mpg} #{self.cupholders}"
  end
#this is a class method
  def self.test_method
    "hello world"
  end

  def self.add_car(model, color, horsepower, year, brand, mpg, cupholders)
    car = Car.new
    car.brand = brand
    car.model = model
    car.color = color
    car.horsepower = horsepower
    car.year = year
    car.mpg = mpg
    car.cupholders = cupholders
    @@list_of_cars.push Car
    Car
  end
  def dispay_list_car
    puts @@list_of_cars
  end
end

car = Car.new
car.brand = "ferrari"
car.model = "La Ferrari"
car.color = "red"
car.horsepower = 900
car.year = 2014
car.mpg = 10
car.cupholders = true

car2 = Car.new
car2.brand = "honda"
car2.model = "civic"
car2.color = "blue"
car2.horsepower = 300
car2.year = 2008
car2.mpg = 25
car2.cupholders = true

p Car.add_car("F-Type", "green", 500, 2013, "jaguar", 20, false)
# p car.class
# p car.brand
# p car.model
# p car.color
# p car.horsepower
# p car.year
# p car.mpg
# p car.cupholders

# p car2.class
# p car2.brand
# p car2.model
# p car2.color
# p car2.horsepower
# p car2.year
# p car2.mpg
# p car2.cupholders

#this will let you use other files in your code
#require './file_name.rb'







