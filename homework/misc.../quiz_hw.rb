=begin
min of 10 questions max of 20
each question is a hash
answer choices will be own array in question hash
desplay each qestion at a time and ask user input
check user input to expected answer
display either yay or nay
display finile score in a percent
get to nick before 9
try not to have as many spelling errors
=end
ruby_test = [
{question: "1. What symbol is used to define a variable?",
answer: "a",
answer_choices:[ 
"a. =",
"b. =<",
"c. =>", 
"d. =="]
},

{question: "2. What symbol when used at the end of a method, modifies a string permanently?",
answer: "c",
answer_choices:[
	"a. *",
	"b. &",
	"c. !",
	"d. @"] 
},

{question: "3. What does the boolean operater || stand for?",
answer: "b",
answer_choices:[
	"a. and",
	"b. or",
	"c. if",
	"d. then"]
},

{question: "4. What does the boolean operater && stand for?",
answer: "a",
answer_choices:[
	"a. and",
	"b. or",
	"c. if",
	"d. then"]
},

{question: "5. What does a hash rocket look like?",
answer: "d",
answer_choices:[
	"a. $",
	"b. %",
	"c. =<",
	"d. =>"]
},

{question: "6. What will the .reverse method do to a string?",
answer: "b",
answer_choices:[
	"a. turn it upside down",
	"b. causes all characters to be displaid in a backwards order",
	"c. undos your last modification to the string",
	"d. nothing, thats not a method"]
},

{question: "7. What is the diffrence between an integer and a float?",
answer: "b",
answer_choices:[
	"a. interger is a number and a float is letters",
	"b. interger is a whole number and a float has a decimal",
	"c. interger is a whole number and a float is a fraction",
	"d. interger is an alien and a float involves ice cream"]
},

{question: "8. When typing a 'do' loop, what does the |user_input| define?",
answer: "c",
answer_choices:[
	"a. or",
	"b. an array",
	"c. a local variable",
	"d. the name of a hash in the array"]
},

{question: "9. What is an escaped charater?",
answer: "a",
answer_choices:[
	"a. a hidden charater",
	"b. a charater that got away",
	"c. charaters that are to long to be desplayed",
	"d. anything other then a letter or number"]
},

{question: "10. What will .inspect do to a string",
answer: "d",
answer_choices:[
	"a. check for syntax errors",
	"b. check for spelling errors",
	"c. shows all possable methods",
	"d. shows escaped characters"]
}
]

total_correct = 0.0

puts "This is a basic Ruby quiz, please answer each question to the best of you knowledge."

puts "I am just putting this here to make the quiz look prettier".clear

ruby_test.each do |hash|
	puts hash[:question], hash[:answer_choices]
	user_input = gets.chomp.downcase
	if user_input == hash[:answer]
		puts "You are correct!!!"
		total_correct += 1.0
	else
		puts "Sorry, that's incorrect"
	end
end

total_questions = ruby_test.count.to_f
grade = (total_correct / total_questions) * 100
puts  "Your finial grade is #{grade.round(2)}%"










