# 08.11.2020
# Many companies have password requirements (must include a letter, a number and a symbol
# for example and require a password of a specific length). We're going to write a program
# that will read in a proposed password and only accept it, if it meets all rules.

# Create a program that will:

# Prompt a user for input (for a new password) (done)
# Read in the proposed Password to a variable (done)
# If the password contains a number and a symbol (@, %, *, or !) and contains 8 or more characters (done)
# then accept the password and congratulate the user, if not make them reenter the password until they enter an acceptable password (done)
# [Optional] Make the user enter the password a second time to verify, and if it's not the same as the original password, make them repeat the process
# [Optional] Make them include a capital and a lowercase letter
# [Optional] Let them know what they did wrong (done)

puts "Please enter a password"
password = gets.chomp
numbers =  password.count("0-9")
symbols =  password.include?("@") || password.include?("%") || password.include?("*") || password.include?("!")
length = password.length >= 8 
puts !numbers


if numbers && symbols && length
    puts "Congratulations this was an acceptable password"
else
    while numbers == 0
        puts "Please enter a password with a number"
        second_password = gets.chomp
        numbers = second_password.count("0-9")
    end
    while !symbols
        puts "Please enter a password with a symbol (@, %, *, or !)"
        second_password = gets.chomp
        symbols =  second_password.include?("@") || second_password.include?("%") || second_password.include?("*") || second_password.include?("!")
    end
    while !length
        puts "Please enter a password with at least 8 characters"
        second_password = gets.chomp
        length = second_password.length >= 8 
    end
end
