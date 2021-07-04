
#Start game - player input
puts "Rock Paper Scissors"
print "Player 1 - Enter your selection: "
player1 = gets.chomp.downcase
print "Player 2 - Enter your selection: "
player2 = gets.chomp.downcase

#Method to calculate result
def calc_result(input1, input2)

    rpc = ['rock','paper','scissors']
    if rpc.include?(input1) && rpc.include?(input2)
    
        case input1
        when "rock"
            if input2 == "paper"
                "Paper covers rock."
            elsif input2 == "scissors"
                "Rock crushes scissors"
            else "Tie!"
            end
        when "paper"
            if input2 == "scissors"
                "Scissors cuts paper."
            elsif input2 == "rock"
                "Paper covers rock."
            else "Tie!"
            end
        when "scissors"
            if input2 == "paper"
                "Scissors cuts paper."
            elsif input2 == "rock"
                "Rock crushes scissors"
            else "Tie!"
            end
        end 

    else "No cheaters! Only Rock, Paper or Scissors are allowed."
    end
end

#Calculare result using method and print
result = calc_result(player1,player2)
puts result
