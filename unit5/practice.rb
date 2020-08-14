# 08.12.2020

# Question 1
# Create an array which will store the square of each value between
# 2 and 5, inclusive. Then print it with puts "#{array}"
array = Array (2..5)
array = array.map{ |element| element ** 2}
puts "#{array}"

# Example Solution 1 - whew
# list = Array.new(4) { |i| (i + 2) * (i + 2) }

# Example Solution 2
# list = []
# (2..5).each do |i|
#   list.push(i * i)
# end


# Question 2
# Given the array below, named list, which contains three people,
# Ada Lovelace, Annie Easley, and Margaret Hamilton,
# add one new person of your choice, you can do this directly,
# no user input needed (no gets.chomp).
def array_1
    list = ["Ada Lovelace", "Annie Easley", "Margaret Hamilton"]
    # your code here
    # I could also use <<
    list.push("Kareha Agesa")
    # end of your code
    return list
  end


# Question 3
# Given the array below, named list, which contains three people,
# Ada Lovelace, Annie Easley, and Margaret Hamilton,
# print out Annie Easley from the array using puts.
list = ["Ada Lovelace", "Annie Easley", "Margaret Hamilton"]


# Question 4
# Given the array below, named list, which contains three people,
# Ada Lovelace, Annie Easley, and Margaret Hamilton,
# replace Ada Lovelace with Megan Smith.
def array_3
    list = ["Ada Lovelace", "Annie Easley", "Margaret Hamilton"]
    # your code here
    list[0] = "Megan Smith"
    # end of your code
    return list
  end


# Question 5
# In the textbox below create an array which stores the names of people that inspire you.
# Then write down two different ways you can access the second-to-last name in your array?
boss = ["Michelle Obama", "Serena Williams", "Lupita Nyong'o"]
boss[-2]
boss[boss.length - 2]


# Question 6
# Create an array which stores the numbers 1 – 15. Then write down how to access the middle number?
array = Array (1..15)
array[array.length / 2]


# Question 7
# Write code that will create an array named powers_of_2, and stores the first 10 powers of 2
def powers_of_two
    powers_of_2 = Array.new(10, 2)
    # the need for map here is inte resting
    # Apparently "each" never changes object it works on
    # https://stackoverflow.com/questions/5646710/change-value-of-array-element-which-is-being-referenced-in-a-each-loop
    powers_of_2 = powers_of_2.each_with_index.map {|num, index| 2 ** (index)}
    return powers_of_2
  end