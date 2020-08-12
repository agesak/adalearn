# Assignment: Election Time
# You are going to create an electronic election program that tracks votes, total votes, and determines a winner.

# Primary Requirements
# Create an election program that accepts input from the user and outputs the winner of the election

# Input: Poll 10 people for their election vote
# Output: Print the total votes cast as well as the winner of the election

# Optional Enhancements
# Some of these enhancements are better solved after having knowledge from Lesson 12: Arrays, so you can try some and then come back and do others after Lesson 12.

# Handle ties for a winner appropriately
# Handle grammar of vote summary saying vote or votes appropriately (done)
# Handle write in votes
# Consider how to handle more than 10 votes (done)
# Consider how to handle more than 3 candidates
# Refactor your code so that your code is DRY (Don't Repeat Yourself) (done)

puts "Welcome to my election voting program \n Election candidates are Sue, John, and Kevin \nHow many people will be voting?"
constituents = get.chomp.to_i

votes = []
constituents.times do |vote|
    puts "Please input your vote"
    candidate = gets.chomp
    puts "Vote #{vote + 1}: #{candidate}"
    votes << candidate
end

vote_hash = {Sue: votes.count("Sue"),
            John: votes.count("John"),
            Kevin: votes.count("Kevin")
}

["Sue", "John", "Kevin"].each do |person|
    votes = vote_hash[:"#{person}"]
    if votes == 1
        string = "vote"
    else
        string = "votes"
    end
    puts "#{person} - #{vote_hash[:"#{person}"]} #{string}"
end



puts "The winner is #{vote_hash.key(vote_hash.values.max).to_s}"