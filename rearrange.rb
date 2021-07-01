number = ''
is_int = false

#Stay false until Int
until is_int != false
    print "Enter a number: "
    number = gets.chomp
    is_int = Integer(number) rescue false
end

#Manage number as Array
numArray = number.to_s.split('')

#Negatives - push all 0's out of 1st position
if number.to_i < 1
    numArray = numArray.sort
    x = 1
    until numArray[x].to_i !=0 || x == numArray.length do
        x=x+1
    end    
    numArray[1], numArray[x] = numArray[x], numArray[1]
    print numArray.join('') + $/
else
    print numArray.sort.reverse.join + $/
end