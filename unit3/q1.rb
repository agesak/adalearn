# 08.01.2020
# Unit 3 Exercises


# Write a program that allows a user to play a guessing number game. 
# Your program should generate a random number between 0 – 1000 
# (including 0, but not including 1000). Allow the user to make
# a guess until they guess the answer. After each guess you should
# print "higher" or "lower". When they guess it correctly print a 
# winning message along with their total number of guesses.
puts "Enter a random number"
user_num = gets.chomp.to_i
guesses = 1


# generate a random number
random_num = rand(1000)
while random_num != user_num
	if random_num > user_num
		direction = "higher"
	else
		direction = "lower"
	end
	guesses += 1
	puts "this is not the number! guess another number that is #{direction}"
	user_num = gets.chomp.to_i
end
puts "Congratulations! You guessed correctly after #{guesses} guesses"

