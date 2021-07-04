codeArr = []
4.times do 
    codeArr << rand(1..6)
end

#for testing
#codeArr = ['1','2','3','4']

num_guesses = 1
puts "MASTERMIND"

loop do
    y = 0
    answer = ''
    answerArr = []
    hintExact = []
    hintInclude = []
    valuesChecked = []

#postivie int - between 1-6 - 4 digits
    until answer =~ /\A[1-6]\d*\Z/ && answer.length == 4
        print "[#{num_guesses}] Enter your guess: " 
        answer = gets.chomp 
        answerArr = answer.to_s.split('') 
    end

    if answerArr == codeArr
        puts codeArr.join("")
        puts "Nice work! You took #{num_guesses} guesses." 
        break
    end

#Iterate and find matches - record matches values
4.times do
    if answerArr[y] == codeArr[y]
        hintExact << "X" 
        valuesChecked << answerArr[y]        
    end
    y += 1
end

#For each unique answer value - add an 'x' unless matched.
for i in answerArr.uniq
    unless valuesChecked.include?(i)
        hintInclude << "x"
    end
end

    print hintExact.join("") + hintInclude.join("") + "\n"
    num_guesses += 1   
end
