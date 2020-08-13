# 08.12.2020
# Create an array to store 5000 decimal numbers.
# Randomly generate numbers from between 0 – 1
# (including 0, but not including 1) to fill the array.
# Calculate and print the mean of all the elements in the array.

decimals = Array.new(500) { rand(0.0...1.0)}
mean = decimals.sum.to_f/decimals.length
puts mean