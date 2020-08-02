# 08.01.2020
# Unit 3 Exercise 4

# Prompt: 
# You don't trust your users. Modify the program below to require
# the user to enter the same value twice in order to add that
# value to the total.

# Starter Code: 
# puts "Hello! We are going to total some numbers!"
# puts "Enter a negative number to quit."

# total = 0
# input = gets.chomp.to_i
# while input > -1
#   total += input
#   input = gets.chomp.to_i
# end

# puts "Result: #{total}"

# Answer: 
puts "Hello! We are going to total some numbers!"
puts "Enter a negative number to quit."

total = 0
input = gets.chomp.to_i

while input > -1
	puts "Please input your previous number again"
	validate_input = gets.chomp.to_i
	if input == validate_input
		total += input
	else
		puts "Entries do not match"
	end
	puts "Enter another number"
	input = gets.chomp.to_i
end

puts "Result: #{total}"
