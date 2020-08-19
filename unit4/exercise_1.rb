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

# helper function to verify if password contains capital letter
def verify_capital(password)
  capital = false
  uppercase_letters = ('A'..'Z')
  password.split("").each do |letter|
    if uppercase_letters.include?(letter)
      capital = true
    end
  end
  return capital
end

# helper function to verify if password contains lowercase letter
def verify_lowercase(password)
  lowercase_letters = ('a'..'z')
  lowercase = false
  password.split("").each do |letter|
    if lowercase_letters.include?(letter)
      lowercase = true
    end
  end
  return lowercase
end

# function to verify the password
def verify_password(password)
  verified = false
  capital = verify_capital(password)
  lowercase = verify_lowercase(password)

  # first verify numbers
  if password.count("0-9") == 0
    validate_sentence = "Please enter a password with a number"
  # then verify symbols
  elsif !(password.include?("@") || password.include?("%") || password.include?("*") || password.include?("!"))
    validate_sentence = "Please enter a password with a symbol (@, %, *, or !)"
  # then verify password length
  elsif password.length < 8
    validate_sentence = "Please enter a password with at least 8 characters"
  # verify contains capital letter
  elsif !capital
    validate_sentence =  "Please enter a password with a capital letter"
  # verify contains lowercase letter
  elsif !lowercase
    validate_sentence = "PLease enter a password with a lowercase letter"
  else
    verified = true
  end
  return verified, validate_sentence
end

verified, validate_sentence = verify_password(password)
until verified
  puts validate_sentence
  password = gets.chomp
  verified, validate_sentence = verify_password(password)
end

# kind of clunky and repetitive of previous until loop
# but the goal is to make the user enter the password a second time to verify
# and if it's not the same as the original password, make them repeat the process
puts "Congratulations this was an acceptable password, please enter it again to verify it"
validate_password = gets.chomp
until password == validate_password
  puts "Passwords must match, please re-enter either the original or a new password (same password requirement apply)"
  password = gets.chomp
  verified, validate_sentence = verify_password(password)
  until verified
    puts validate_sentence
    password = gets.chomp
    verified, validate_sentence = verify_password(password)
  end
  puts "Congratulations this was an acceptable password, please enter it again to verify it"
  validate_password = gets.chomp
end

puts "Password accepted and verified"

