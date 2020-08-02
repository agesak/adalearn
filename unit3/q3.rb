# 08.01.2020
# Unit 3 Exercise 3


# Write a program that allows a user to enter the number of petals on a flower.
# Then one by one, print “plucking petal #1: they love me!”. Alternate 
# “They love me” and “They love me not” as well as increase the petal 
# number for each petal.

puts "Please enter the number of petals"
max_petals = gets.chomp.to_i

petal_num = 1
# make an array long enough to iterate over
# this array really only needs to be of length max_petals
# not 2*max_petals....
end_sentence = ["me", "me not"] * max_petals

max_petals.times do |i|
	puts "plucking petal \# #{petal_num}: They love #{end_sentence[i]}"
	petal_num += 1
end