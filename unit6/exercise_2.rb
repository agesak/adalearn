# 08.13.2020
# Now that we know about hashes, we will refactor your original
# account generator code to utilize arrays with hashes.
# Since each student has three pieces of data, we will utilize
# a hash to store these three pieces of data, related to one another.

# This is a better solution because this will keep each student record
# together instead of having three separate arrays with the student data.
# When a new student record is created, one hash needs to be added to the
# array rather than three pieces of data to individual arrays. This also
# scales much better as we add more pieces of information on each student.
# If we had 20 pieces of data on each student that would be a lot of arrays!

# Complete the following refactor steps:

# 1. Utilize a single array variable to store all student information,
# instead of three individual arrays. This array will contain many hashes.


# 2. Utilize a single loop to drive the hash population
# (you may have nested loops inside this loop for other functionality):
# accept user input for the student's name
# generate random student ID
# generate student email address from previous pieces of data

# 3. Update the printing functionality to utilize this new hash variable
# to print out student roster

student_info = []

5.times do |index|
    puts "Please enter a student's first and last name"
    # get name
    name = gets.chomp.upcase
    # generate random id number
    id_number = rand(111111..999999)
    # goal: get first initials
    # first step: capture everything but last name
    first_names = name.split(" ")[0..-2]
    # then get first initials
    initial = first_names.map {|i| i[0]}
    # get last name
    last_name = name.split(" ")[-1]
    # get last 3 digits of student id
    digits = id_number.to_s[-3..-1]
    # create email address
    email = "#{initial.join("")}#{last_name}#{digits}@adadevelopersacademy.org"
    student_info[index] = {name: name, id_number: id_number, email: email}
end

student_info.each {|i| puts "Student: #{i[:name]} ID Number: #{i[:id_number]} Email: #{i[:email]} \n"}
