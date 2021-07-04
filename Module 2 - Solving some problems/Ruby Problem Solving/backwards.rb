
#Input first and last name
puts "Input your first and last name: "
input = gets

    #Split intput and reverse
    print "Hello "
    for i in input.split(" ").reverse
        print i + " "
    end 
    print $/