# 08.11.2020
# Many companies have password requirements (must include a letter, a number and a symbol
# for example and require a password of a specific length). We're going to write a program
# that will read in a proposed password and only accept it, if it meets all rules.

# Create a program that will:

# Prompt a user for input (for a new password) (done)
# Read in the proposed Password to a variable (done)
# If the password contains a number and a symbol (@, %, *, or !) and contains 8 or more characters (done)
# then accept the password and congratulate the user, if not make them reenter the password until they enter an acceptable password (done)
# [Optional] Make the user enter the password a second time to verify, and if it's not the same as the original password, make them repeat the process (attempted)
# [Optional] Make them include a capital and a lowercase letter (done)
# [Optional] Let them know what they did wrong (done)

puts "Please enter a password"
puts "Password requirements: \n 1. Needs a number \n 2. Needs a symbol (@, %, *, or !) \n 3. Needs to contain 8 or more characters \n 4. Needs at least one capital letter \n 5. Needs at least one uppercase letter"
password = gets.chomp

# Goal: Make the user enter the password a second time to verify,
# and if it's not the same as the original password, make them repeat the process
# Code: Not sure if this accomplishes that, this just penalizes the user forever until they match..
puts "Please re-enter your password"
validate_password = gets.chomp
while password != validate_password
    puts "Passwords must match, please enter the same password"
    validate_password = gets.chomp
end

# verify numbers, symbols, and password length
numbers =  password.count("0-9")
symbols =  password.include?("@") || password.include?("%") || password.include?("*") || password.include?("!")
length = password.length >= 8 

# function to verify if password contains capital letter
def verify_capital(password)
    capital = false
    uppercase_letters = ('A'..'Z')
    password.split("").each do |letter|
        if uppercase_letters.include?(letter)
            # I'm not sure if this violates Boolean Zen
            capital = true
        end
    end
    return capital
end

# function to verify if password contains lowercase letter
def verify_lowercase(password)
    lowercase_letters = ('a'..'z')
    lowercase = false
    password.split("").each do |letter|
        if lowercase_letters.include?(letter)
            # I'm not sure if this violates Boolean Zen
            lowercase = true
        end
    end
    return lowercase
end

# verify capital and lower case letter in password
capital = verify_capital(password)
lowercase = verify_lowercase(password)

# interaction with user to validate password
if numbers && symbols && length && capital && lowercase
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
    capital = verify_capital(password)
    while !capital
        puts "Please enter a password with a capital letter"
        second_password = gets.chomp
        capital = verify_capital(second_password)
    end
    lowercase = verify_lowercase(password)
    while !lowercase
        puts "PLease enter a password with a lowercase letter"
        second_password = gets.chomp
        lowercase = verify_capital(second_password)
    end
    puts "Congratulations this was an acceptable password"
end

# an improvement to ponder.. 
# right now all conditions in the above if statement are based on the initial password
# and dont update dymanically,
# so say the user enters a password that fails numbers and symbols
# theyll first hit an error with numbers
# but if they fix numbers and symbols at that point, only the
# numbers fix will be taken into account..
# (because the symbols check is based on their initial password)
