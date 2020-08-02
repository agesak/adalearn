# 08.01.2020
# Unit 3 Exercise 2

# Q2
# Write a program that plays duck duck goose.
# Allow the user to enter the player's number
# they want to call goose on, and then say "duck"
# for each player before the "goose", then say
# "goose" for the chosen player.
puts "Which player do you want to be the Goose? Please just enter the player's number"
goose = gets.chomp.to_i

player = 1
while player < goose
	puts "Player #{player}: Duck"
	player += 1
end
puts "Player #{goose}: Goose"