
#Input valid integer values, add to array
numbers = [] 
until numbers[0] =~ /^-?[0-9]+$/
    print "Enter a number: "
    numbers[0] = gets.chomp end
until numbers[1] =~ /^-?[0-9]+$/ 
    print "Enter another number: "
    numbers[1] = gets.chomp end
    
#Print max of array values
puts "Max: #{numbers.max}"