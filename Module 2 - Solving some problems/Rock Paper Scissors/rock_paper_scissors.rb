
#Method to calculate result
def calc_result(input1, input2)

    #validate input and compare words to determine result
    #return result as string
    rpc = ['rock','paper','scissors']
    if rpc.include?(input1) && rpc.include?(input2) 
        case input1
        when "rock"
            if input2 == "paper"
                return "Paper covers rock."
            elsif input2 == "scissors"
                return "Rock crushes scissors"
            else "Tie!" end
        when "paper"
            if input2 == "scissors"
                return "Scissors cuts paper."
            elsif input2 == "rock"
                return "Paper covers rock."
            else "Tie!" end
        when "scissors"
            if input2 == "paper"
                return "Scissors cuts paper."
            elsif input2 == "rock"
                return "Rock crushes scissors"
            else "Tie!" end
        end 
    else 
        "No cheaters! Only Rock, Paper or Scissors are allowed."
    end
end


#Start game
puts "Rock Paper Scissors"
#Keep playing
playAgain = true
player1wins = 0
player2wins = 0

#Loop until game-end conditions
until playAgain == false
    print "Player 1 - Enter your selection: "
    player1 = gets.chomp.downcase
    print "Player 2 - Enter your selection: "
    player2 = gets.chomp.downcase

    #Calculate result using method and puts
    result = calc_result(player1,player2)
    puts result

    #If no winner - bad input - or tie - play again
    #validating results by analysing result string from method
    if result.include?("Tie") || result.include?("cheaters")
        playAgain = true
    else 
        #checking the first word of result "Paper covers rock"
        #and seeing which player entered that word
        if result.partition(" ").first.downcase == player1
            player1wins += 1
            if player1wins > 1 
                puts "Player 1 wins." 
                playAgain = false
            end
        elsif result.partition(" ").first.downcase == player2
            player2wins += 1
            if player2wins > 1 
                puts "Player 2 wins." 
                playAgain = false
            end
        end 
    end 

end


