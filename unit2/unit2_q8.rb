# Unit 2 question 8
# I wanted to be able to test this as a script from the command line


# Q8
# Prompt for rate of pay and hours worked. Calculate gross pay.
# Provide time-and-a-half for hours worked beyond 40 (e.g.,
# if you get paid $10/hr and work 45 hours in a week,
# you would gross $475 (40 x 10 + 5 x 15).
puts "What is your rate of pay  ==> "
rate = gets.chomp.to_f
puts "How many hours did you work  ==> "
hours = gets.chomp.to_f

# how many hours did they work over 40? (if any)
excess_hours = hours - 40
if excess_hours > 0
	# hours over 40 paid at time-and-a-half
	excess_pay = excess_hours * (rate + (rate/2))
	# calculate total pay for 40hours
	regular_pay = 40 * rate
	# sum income for over 40hours with income at 40hours
	total_pay = regular_pay + excess_pay
else
	# if they don't work over 40hours income = rate * hours worked
	total_pay = hours * rate
end
puts "You earned $#{total_pay}"