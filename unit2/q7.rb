# 08.02.2020
# debugging separately because I got wrong


# Q7
# Prompt for a one of the following: SHORT, TALL, GRANDE, VENTI.
# Print out the number of ounces that drink includes
# (8, 12, 16, 20 respectively).
print "Please enter a drink size (SHORT, TALL, GRANDE or VENTI)  ==> "
size = gets.chomp.upcase
if size == "SHORT"
	oz = 8
elsif size == "TALL"
	oz = 12
elsif size == "GRANDE"
	oz = 16
elsif size == "VENTI"
	oz = 20
end
puts "#{oz} ounces"