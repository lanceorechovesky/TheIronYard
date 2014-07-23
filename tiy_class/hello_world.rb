x = "Hello World!"
y = 12
dude = "Dude Sup"
z = 12.1234
your_variable = y + z
is_sam_awesome = true
is_nick_awesome = false

#puts x
#puts dude
#puts y
#puts z
#puts your_variable
#puts is_nick_awesome
#puts is_sam_awesome
#puts is_sam_awesome == is_nick_awesome
#puts 1 != 2
# == is equals != is not equals

=begin
if 2 != 2 
	puts "Hell Yea!!!"
	puts "1 is not equal to 2"
else
	puts "This is not true!!!"
end
=end

#gets
#puts "enter your name"
#user_input = gets
#puts "Name: " + user_input
#puts "name: #{user_input}"
#puts "some math problem: #{1+2}"
#solves
#puts 'single quote string #{1+1+1}'
#just puts it up

#variable initialization
celcius = nil
user_input = nil
puts "enter farenheight temperature:"
farenheight = gets.to_f

puts farenheight.class
puts "farenheight #{farenheight}"
celcius = (farenheight - 32) / 1.8
puts "celcius: #{celcius}"
=begin
PROGRAM LOGIC
define celcius
define user input
define temperature
get user input for f
change user input to an interger
do math
temperature user_input -32
celcius is temperature / 1.8
print celcius to the user
=end