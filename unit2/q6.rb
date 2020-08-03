# 08.02.2020
# debugging separately because I got wrong


# Q6
# Prompt for a state. If the state is Washington, Oregon, or Idaho,
# print This state is in the PNW, otherwise print
# You should move to the PNW. It’s great here!
puts "Please enter a state"
state = gets.chomp
if state == "Washington" || state == "Oregon" || state == "Idaho"
	puts "This state is in the PNW"
else 
	puts "You should move to the PNW. It’s great here!"
end		