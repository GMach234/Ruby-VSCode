puts "Input your first and last name: "
input = gets
print "Hello "
for i in input.split(" ").reverse
    print i + " "
end 
print $/