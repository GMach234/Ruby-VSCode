#Method to calculate result
def calc_result(input1, input2)

    rpc = ['rock','paper','scissors']
    if rpc.include?(input1) && rpc.include?(input2) 
        case input1
        when "rock"
            if input2 == "paper"
                return "Paper covers rock.", "Player 2 wins."
            elsif input2 == "scissors"
                return "Rock crushes scissors", "Player 1 wins."
            else "Tie!" end
        when "paper"
            if input2 == "scissors"
                return "Scissors cuts paper.", "Player 2 wins."
            elsif input2 == "rock"
                return "Paper covers rock.", "Player 1 wins"
            else "Tie!" end
        when "scissors"
            if input2 == "paper"
                return "Scissors cuts paper.", "Player 1 wins."
            elsif input2 == "rock"
                return "Rock crushes scissors", "Player 2 wins."
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

#Loop until game-end conditions
until playAgain == false
    print "Player 1 - Enter your selection: "
    player1 = gets.chomp.downcase
    print "Player 2 - Enter your selection: "
    player2 = gets.chomp.downcase

    #Calculare result using method and puts
    result = calc_result(player1,player2)
    puts result

    #If results indicate bad input or a tie, play again
    if result.include?("Tie") || result.include?("cheaters")
        playAgain = true
    else playAgain = false end
end


