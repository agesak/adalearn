# 08.01.2020


# Unit 2
# Practice
# Q: For practice Create a loop in which outputs all the even numbers from 0 - 10

# A:
# so this isnt a loop
(0..10).step(2).to_a

# Another A:
# but this is!
(0..10).each do |num|
	if num == 0
		puts num
	elsif num % 2 == 0
		puts num
	end
end

# Example solution:
num = 0

while num <= 10
  puts num
  num += 2
end

# Exercises
# Q1
# Prompt for a number. If the number is greater than 70,
# print PASSING, otherwise, print NOT PASSING.
puts "Please enter a number"
number = gets.chomp.to_i
if number > 70
	puts "PASSING"
else
	puts "NOT PASSING"
end

# Q2
# Prompt for a string. If the string is equal to green,
# print GO, otherwise, print STOP.
puts "Please enter a string"
str = gets.chomp
if str == "green"
	puts "GO"
else
	puts "STOP"
end

# Q3
# Prompt for a number. If the number is even,
# print EVEN, otherwise, print ODD.
puts "Please enter a number"
num = gets.chomp.to_i
puts 















