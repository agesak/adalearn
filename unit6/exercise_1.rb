# 08.13.2020
# We are going to write a program that generates some student information.
# This exercise will practice our skills with strings, random numbers, arrays and iterators.

# Requirements
# 1. You will start by creating three arrays:
# An array that will contain student names
# An array that will store student ID numbers
# An array that will contain student email addresses

# 2. Write a times loop that asks the user to enter in 5 student names
# (first and last name) and store those values in the first array in all
# uppercase even if the information is not entered by the user in uppercase.

# 3. Write a times loop to generate random student ID numbers from 111111 to 999999
# and put these values to the student ID number array.

# 4. Write a times loop to generate student email addresses in the format:
# (first inital)+(last name)+(last 3 digits of student ID number)@adadevelopersacademy.org

# 5. Write the code which will print out all the student names, ID numbers,
# and email addresses in parallel.

# Optional Enhancements
# 1. Make sure none of the IDs are duplicates

# 2. Account for ID numbers whose last 3 digits are less than 100
# (e.g. 111008) because these ID numbers will generate an email
# address with less than 3 digits at the end without special cases.

# 3. On email generation, account for first names with a space in them
# e.g. if the first name is "Mary Jane", then the first initial should
# be "MJ" rather than just "M"

# 4. Read in the student names from a file instead of the user and
# make the array size according to the number of names

# part 1
names = []
id_numbers = []
emails = []

# part 2
5.times do
    puts "Please enter a student's first and last name"
    name = gets.chomp.upcase
    names.push(name)
end

# optional enhancements # 4
# require "csv"
# names = CSV.read("/Users/kareha/Documents/ada/adalearn_unit6_exercise1.csv")
# names = names.flatten(1)[1..-1]

# part 3
5.times do
    num = rand(111111..999999)
    id_numbers.push(num)
end

# optional enhancements # 1
until id_numbers.length == id_numbers.uniq.length
    id_numbers = id_numbers.uniq
    num = rand(111111..999999)
    id_numbers.push(num)
end


# part 4 and optional enhancements #2/#3
name_id_hash = Hash[names.zip id_numbers]
names.each_with_index do |person, index|
    # capture everything but last name
    # (account for those with names like Mary Jane)
    first_names = names[index].split(" ")[0..-2]
    # get first initials
    initial = first_names.map {|i| i[0]}
    last_name = names[index].split(" ")[-1]
    digits = id_numbers[index].to_s[-3..-1]
    email = "#{initial.join("")}#{last_name}#{digits}@adadevelopersacademy.org"
    emails.push(email)
end

# part 5
student_info = []
names.each_with_index do |person, index|
    hash = {}
    hash[:name] = person
    hash[:id_number] = id_numbers[index]
    hash[:email] = emails[index]
    student_info.push(hash)
end

student_info.each {|i| puts "Student: #{i[:name]} ID Number: #{i[:id_number]} Email: #{i[:email]} \n"}
