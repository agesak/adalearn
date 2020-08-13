# 08.12.2020
# Create an array to store 5 boolean values entered in by the user.
# Print out YES if all the values are true and NO if
# at least one value is false.
# Hint: Prompt the user to enter true or false, and accept those values using gets.
# Since gets will give us back a string (instead of the boolean values we want)
# use if statements to convert those strings to boolean values.

bools = []
acceptable_vals = ["true", "false"]

# accept user input
5.times do
    puts "Please enter either true or false"
    bool = gets.chomp.downcase
    # verify user input is correct
    until acceptable_vals.include?(bool)
        puts "You didn't enter true or false, please do that"
        bool = gets.chomp.downcase
    end
    if bool == "true"
        bool = true
    elsif bool == "false"
        bool = false
    end
    bools.push(bool)
end

if bools.all?
    puts "YES"
else
    puts "NO"
end