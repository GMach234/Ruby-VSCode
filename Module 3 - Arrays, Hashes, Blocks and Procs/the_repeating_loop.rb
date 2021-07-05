
def total(prices)
    amount = 0
    index = 0
    while index < prices.length
        amount += prices[index]
        index += 1
    end
    amount #return
end

def refund(prices)
    amount = 0 
    index = 0
    while index < prices.length
        amount -= prices[index]
        index += 1 
    end
    amount
end

def show_discounts(prices)
    index = 0
    while index < prices.length
        amount_off = prices[index] / 3.0
        puts format("Your discount: $%.2f", amount_off)
        index += 1
    end
end

prices = [3.99, 25.00, 8.99]
puts format("%.2f", total(prices)) #format .xx float
puts format("%.2f", refund(prices))
show_discounts(prices)

#######################################

# For a short program - the first commit (164) looks nicer. 
# It's compartmentalised into few parts so it's easy to read. 
# It repeats lines of code but they can be glanced passed as they're not complex. 

# The second (the WRONG way) example is much more difficult to sift through and needs 
# to be read with specific conditions in mind, to understand fully. 

#######################################
# Example where DRY code is helpful. 

input = [5, 2]

def addInput(input) #add array items
    answer = 0
    index = 0
    while index < (input.length - 1)
        answer = input[index] + input[index+1]
        index += 1
    end
    return answer
end

puts addInput(input)

def multiInput(input) #multiply array items
    answer = 0 
    index = 0
    while index < (input.length - 1) # && input.include?(0) == false  
        answer = input[index] * input[index+1]
        index += 1
    end
    return answer
end

puts multiInput(input)

# Applying DRY to remove the loop repetition
# would mean adding several conditions for different operators
# for example multiplication by 0 needs to be handled in one instance
# or correctly handling subtraction