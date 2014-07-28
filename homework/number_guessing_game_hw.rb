
#number guessing game
#needs intro
#generate a random number
#ask the user for input = guess
#check if guess is < than number
#if so inform and try again
#check if guess is > than number
#if so inform and try again
#check if guess is = to number
#if so inform and end

puts "This is a number guessing game, please pick a number between 1 and 100"

user_guess = nil

number = rand(100).to_i

until user_guess == number
	user_guess = gets.chomp.to_i
		if user_guess > number
			puts "Your number is to large. Please try again!"
		elsif user_guess < number
			puts "Your number is to small. Please try again!"
		end	
end
puts "You got it right!!!\n Your so smart!!!!"