# 08.12.2020
# Create an array to store 5 names.
# Have the user enter in the 5 names and then print out
# the 5 names in all UPPERCASE all on the same line.
# Note that the user may not enter all the names in uppercase.

names = []

5.times do
    puts "Please enter a name"
    name = gets.chomp.upcase
    names.push(name)
end

puts "#{names}"