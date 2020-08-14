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