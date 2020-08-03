# 08.02.2020
# debugging separately because I got wrong


# Q4
# Prompt for a number. If the number is evenly divisible by 5,
# print MULTIPLE OF 5, otherwise, print NOT A MULTIPLE OF 5.
puts "Please enter a number"
num = gets.chomp.to_i
if num % 5 == 0
	puts "MULTIPLE OF 5"
else
	puts "NOT A MULTIPLE OF 5"
end