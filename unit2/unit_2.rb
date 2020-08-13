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
if num.even?
	puts "EVEN"
elsif num.odd?
	puts "ODD"
end

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

# Q5
# Prompt for a jersey number. If that number is 12, 71, or 80,
# print That number is retired from the Seattle Seahawks!,
# otherwise do nothing.
puts "Please enter a jersey number"
num = gets.chop.to_i
if num == 12 || num == 71 || num == 80
	puts "That number is retired from the Seattle Seahawks!"
end

# Q6
# Prompt for a state. If the state is Washington, Oregon, or Idaho,
# print This state is in the PNW, otherwise print
# You should move to the PNW. It’s great here!
puts "Please enter a state"
state = gets.chomp
if state == "Washington" || state == "Oregon" || state == "Idaho"
	puts "This state is in the PNW"
else puts "You should move to the PNW. It’s great here!"
end		

# Q7
# Prompt for a one of the following: SHORT, TALL, GRANDE, VENTI.
# Print out the number of ounces that drink includes
# (8, 12, 16, 20 respectively).
print "Please enter a drink size (SHORT, TALL, GRANDE or VENTI)  ==> "
size = gets.chomp
if size == "SHORT"
	oz = 8
elsif size == "TALL"
	oz = 12
elsif size == "GRANDE"
	oz = 16
elsif size == "VENTI"
	oz == 20
end
puts "#{oz} ounces"
		
# Q8
# Prompt for rate of pay and hours worked. Calculate gross pay.
# Provide time-and-a-half for hours worked beyond 40 (e.g.,
# if you get paid $10/hr and work 45 hours in a week,
# you would gross $475 (40 x 10 + 5 x 15).
# also saved as unit2_q8.rb in the adalearn folder
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
