
#Welcome message - input name
puts "Welcome to 'Get My Number!'"
print "What's your name? "
input = gets
name = input.chomp
puts "Welcome, #{name}!"

#Present game - generate random number
puts "I've got a random number between 1 and 100."
puts "Can you guess it?"
target = rand(100)+1

#Conditions
num_guesses = 0
guessed_it = false

#Loop until 10 guesses or success
until num_guesses == 10 || guessed_it
    puts "You've got #{10 - num_guesses} guesses left."
    print "Make a guess: "
    guess = gets.to_i

    num_guesses += 1

    if guess < target
        puts "Oops. Your guess was LOW."
    elsif guess > target
        puts "Oops. Your guess was HIGH."
    elsif guess == target 
        puts "Good job, #{name}!"
        puts "Your guesed my number in #{num_guesses} guesses!"
        guessed_it = true
    end
end

#If not guessed and out of moves
unless guessed_it
    puts "Sorry. You didn't get my number. (It was #{target})"
end


