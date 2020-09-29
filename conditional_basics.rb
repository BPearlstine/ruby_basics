# methods to call in the script
# simple wrappers for basic calc commands

def multiply(first_num, second_num)
    first_num.to_f * second_num.to_f
end

def divide(first_num, second_num)
    first_num.to_f / second_num.to_f
end

def add(first_num, second_num)
    first_num.to_f + second_num.to_f
end

def subtract(first_num, second_num)
    first_num.to_f - second_num.to_f
end

def mod(first_num, second_num)
    first_num.to_f % second_num.to_f
end

# calc_options hash has key:value pairs of
# input option:['string response', method_to_call]
calc_options = {1=> ['multiplied by',
                    method(:multiply)],
                2=> ['added to',
                    method(:add)],
                3=> ['subtracted by',
                    method(:subtract)],
                4=> ['divided by',
                    method(:divide)],
                5=> ['mod',
                    method(:mod)]}

# start of output
puts "Simple Calculator"
# big ol' line across the screen
20.times { print "-" } 
puts
# get first number and cast to int
puts "Please enter your first number"
first_number = gets.chomp.to_i
# get second number and cast to int
puts "Please enter your second number"
second_number = gets.chomp.to_i

# have user select which method will be called
# and cast to int
puts "What do you want to do?"
puts "Enter 1 for multiply, 2 for addition, 3 for subtraction, 4 for division, 5 for mod"
user_entry = gets.chomp.to_i

# display selection
puts "You selected #{user_entry}"

# check that the number entered by the user is within the
# possible options (length of hash + 1), if not lettem know
if user_entry < (calc_options.length + 1)
    # using the input as the key, first index of the list in the value is
    # added to the string, second index of the list is called and then
    # added to the string.
    puts "The first number #{calc_options[user_entry][0]} the second number is: #{calc_options[user_entry][1].call(first_number, second_number)}"
else
    puts "Sorry that is not an option"
end




