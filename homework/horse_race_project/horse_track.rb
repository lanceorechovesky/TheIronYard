require './evil_horse.rb'
require './user_horse.rb'

def horse_speed
  rand(1..3).to_i
end

@user_horse = UserHorse.new
@user_horse.name = nil
@user_horse.speed = horse_speed
@user_horse.symbol = nil
@user_horse.turn_count = 0

@evil_horse1 = Evil.new
@evil_horse1.name = "Hades"
@evil_horse1.speed = horse_speed
@evil_horse1.symbol = '@'
@evil_horse1.turn_count = 0

@evil_horse2 = Evil.new
@evil_horse2.name = "Hans"
@evil_horse2.speed = horse_speed
@evil_horse2.symbol = ">"
@evil_horse2.turn_count = 0

@evil_horse3 = Evil.new
@evil_horse3.name = "jafar"
@evil_horse3.speed = horse_speed
@evil_horse3.symbol = "$"
@evil_horse3.turn_count = 0

@user_input = nil

puts "please pick your horses name!"
@user_horse.name = gets.chomp.to_s
puts "please pick your horses symbol!\n then press enter"
@user_horse.symbol = gets.chomp.to_s

@u1_track = [@user_horse.symbol]
@e1_track = [@evil_horse1.symbol]
@e2_track = [@evil_horse2.symbol]
@e3_track = [@evil_horse3.symbol]

def movement_u1 
  puts "#{@user_horse.name}"
  puts @u1_track.join
    case @user_input
    when 0
      @u1_track.unshift(' = ' * horse_speed) 
      @user_horse.turn_count += 1
    when 24
      @u1_track.unshift(' = ' * rand(3..5).to_i)
      @user_horse.turn_count += 1
    else
      @u1_track.unshift(' = ' * horse_speed)       
      @user_horse.turn_count += 1      
    end
end

def movement_e1 
  puts "#{@evil_horse1.name}"
  puts @e1_track.join
    case @user_input
    when 0
      @e1_track.unshift(' = ' * horse_speed) 
      @evil_horse1.turn_count += 1
    else
      @e1_track.unshift(' = ' * horse_speed)       
      @evil_horse1.turn_count += 1      
    end
end

def movement_e2 
  puts "#{@evil_horse2.name}"
  puts @e2_track.join
    case @user_input
    when 0
      @e2_track.unshift(' = ' * horse_speed) 
      @evil_horse2.turn_count += 1
    else
      @e2_track.unshift(' = ' * horse_speed)       
      @evil_horse2.turn_count += 1      
    end
end

def movement_e3 
  puts "#{@evil_horse3.name}"
  puts @e3_track.join
    case @user_input
    when 0
      @e3_track.unshift(' = ' * horse_speed) 
      @evil_horse3.turn_count += 1
    else
      @e3_track.unshift(' = ' * horse_speed)       
      @evil_horse3.turn_count += 1      
    end
end

def check_win 
a = [@e1_track.join.length, @e2_track.join.length, @e3_track.join.length].sort.last
b = [@u1_track.join.length, @e2_track.join.length, @e3_track.join.length].sort.last
c = [@u1_track.join.length, @e1_track.join.length, @e3_track.join.length].sort.last
d = [@u1_track.join.length, @e1_track.join.length, @e2_track.join.length].sort.last

  if @u1_track.join.length >= a
    puts "#{@user_horse.name} is the winner!!!"
  elsif @e1_track.join.length >= b
    puts "Hades is the winner!!!" 
  elsif @e2_track.join.length >= c
    puts "Hans is the winner!!!"
  elsif @e3_track.join.length >= d
    puts "jafar is the winner!!!"  
  else
    puts "i dont know whats going on"
  end
end

until (@evil_horse1.turn_count || @evil_horse2.turn_count || @evil_horse3.turn_count) >= 11
  puts "\n"
  @user_input = gets.chomp.to_i
  movement_u1
  movement_e1
  movement_e2
  movement_e3
end
check_win