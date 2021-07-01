input = ''
loop do
    print "Enter a year: "
    input = gets.chomp
    break if (input.to_i).positive?
    print "#{input} is not a valid year" + $/
end  

year = input.to_i

if year % 400 == 0
    puts "#{year} is a leap year"
elsif (year % 4 == 0) && (year % 100 != 0)
    puts "#{year} is a leap year"
else 
    puts "#{year} is not a leap year"
end 
