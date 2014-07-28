=begin
find 5 methods for each type of variable
-boolean = anything that gives you back a true or false
-string = words or characters within double or single quotes
-interger = numbers
-float = numbers with a decimal point
write them in to a code
send to nick
get done befoe 9 tomorrow
=end

#booleans

puts "These are my boolean examples"

#you can use comparisons like in math!!!
puts "you can use things like greater than and less than to compare numbers"
puts "like: is 24<27?"
puts 24<27

#you can use if statments 
puts "one common boolean is an if/then statment"
puts "like: if 24<27 then desplay YO MOMA!!!"
if 24<27
	puts "YO MOMA!!!"
end

#you can add another possabilty to that statment with else
puts "you can add to that if/then statment by adding else"
puts "like: if 24>27 desplay YO MOMA!!! else desplay YO DADDY!!!"
if 24>27
	puts "YO MOMA!!!"
else
	puts "YO DADDY!!!"
end

#you can even compare the number of characters in a string to a set number
puts "you can even compare the number of letters in a word to a set number"
puts "like: is there 11 characters in my last name (orechovesky)"
puts "orechovesky".length == 11

#you can also check if a character is included in a set range
puts "you can also check to see if a character is included in a set range"
puts "like: is the letter g inbetween a and z in the alphabet"
puts ("a".."z").include?("g")

#strings

puts "These are my string examples"

#.swapcase will do just that and swap the case of each characters
puts "I aM testIng oUt .swapcase"
puts "I aM testIng oUt .swapcase".swapcase

#.delete = removes selected characters
puts "I am testing .delete out"
puts "I am testing .delete out".delete "aeiouAEIOU"

#.upcase = makes every character uppercase
puts "I am testing .upcase out"
puts "I am testing .upcase out".upcase

#.downcase = makes every character lowercase
puts "I AM TESTING .DOWNCASE OUT"
puts "I AM TESTING .DOWNCASE OUT".downcase

#.length = gives you the amount of characters in the string
puts "I am testing .length out"
puts "I am testing .length out".length

#.reverse = flips or rather reverses the characters in the string
puts "I am testing .reverse out"
puts "I am testing .reverse out".reverse

#.gsub("character to switch", "character switched to this")
puts "I am testing out .gsub("", "")"
puts "I am testing out .gsub("", "")".gsub("t", "sh")

#.chomp removes the new line that gets adds
puts "I am testing out .chomp\n".inspect
puts "I am testing out .chomp\n".chomp.inspect

#.inspect returns your string in quotes with escaped(hidden) characters shown
puts "I am testing .inspect out"
str = "Hello"
str[3] = "\b"
puts str.inspect

#interger

puts "These are my interger examples, Im using 24 as a base."

#.next gives you your interger +1
puts "I am testing .next out"
puts 24.next

#.pred gives you your interger -1
puts "I am testing .pred out"
puts 24.pred

#.round will round your interger based on normal math rules
puts "I am testing .round out with 9/2"
puts 9/2.round

#.odd? will return true if interger is odd
puts "I am testing .odd out"
puts 24.odd?

#.gcd will return the greatest common devisor
puts "I am testing out .gcd between 24 and 2"
puts 24.gcd(20)

#float

puts "These are my float examples, im using 24.27"

#.infinite? returns nill, -1, or +1 depending on whether the float is finite, -infinity, or +infinity
puts "I am testing out .infinite?"
puts 24.27.infinite?.inspect

#.phase will return 0 if value is positive, otherwise returns pi
puts "I am testing out .phase"
puts 24.27.phase

#.rationalize will simplfy to a fraction
puts "I am testing out .rationalize"
puts 24.27.rationalize

#.hash will return a hash code for the float
puts "I am testing out .hash"
puts 24.27.hash

#.floor will ruturn the largest integer less than or equal to your float
puts "I am testing out .floor"
puts 24.27.floor

#.round will do just that, round your float to an sclected decemal place
puts "I am test out .round"
puts 24.27.round(1)





















