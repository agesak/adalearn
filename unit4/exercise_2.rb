# Assignment: Election Time
# You are going to create an electronic election program that tracks votes, total votes, and determines a winner.

# Primary Requirements
# Create an election program that accepts input from the user and outputs the winner of the election

# Input: Poll 10 people for their election vote
# Output: Print the total votes cast as well as the winner of the election

# Optional Enhancements
# Some of these enhancements are better solved after having knowledge from Lesson 12: Arrays, so you can try some and then come back and do others after Lesson 12.

# Handle ties for a winner appropriately (done)
# Handle grammar of vote summary saying vote or votes appropriately (done)
# Handle write in votes (done) 
# Consider how to handle more than 10 votes (done)
# Consider how to handle more than 3 candidates 
# Refactor your code so that your code is DRY (Don't Repeat Yourself) (done)

puts "Welcome to my election voting program \nElection candidates are Sue, John, and Kevin \nHow many people will be voting?"
constituents = gets.chomp.to_i

valid_candidates = ["sue", "john", "kevin"]

# retain the chosen candidate for each user
votes = []
constituents.times do |vote|
    puts "Please input your vote"
    candidate = gets.chomp.downcase
    # ensure chosen candidate is not a write in
    if !valid_candidates.include?(candidate)
        puts "Please enter a candidate mentioned above"
        candidate = gets.chomp
    end
    puts "Vote #{vote + 1}: #{candidate}"
    votes << candidate
end

# create a hash with the candidates and number of votes they got
vote_hash = {Sue: votes.count("sue"),
            John: votes.count("john"),
            Kevin: votes.count("kevin")
}

# output number of votes each candidate got
valid_candidates.each do |person|
    votes = vote_hash[:"#{person.capitalize}"]
    if votes == 1
        string = "vote"
    else
        string = "votes"
    end
    puts "#{person} - #{votes} #{string}"
end

# account for ties
# retain the highest number of votes
max_value = vote_hash.values.max

# if a candidate got this high number of votes - consider them a winner
winners = []
vote_hash.each do |key, value|
    if value == max_value
        winners << key.to_s
    end
end

# print summary sentence with the winner
if winners.length > 1
    puts "The winners are #{winners.join(", ")}"
else
    puts "The winner is #{winners.join(", ")}"
end
