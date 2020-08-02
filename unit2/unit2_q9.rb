# Q9
# Rewrite the solution to the previous problem adding this modification:
# do not process any employee if their hours worked is greater than 60,
# instead display the message Please see manager.
puts "What is your rate of pay  ==> "
rate = gets.chomp.to_f
puts "How many hours did you work  ==> "
hours = gets.chomp.to_f


if hours > 60
	puts "Please see manager"
else
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
end