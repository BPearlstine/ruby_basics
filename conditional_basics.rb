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

puts "Simple Calculator"
20.times { print "-" } 

puts
puts "Please enter your first number"
first_number = gets.chomp.to_i
puts "Please enter your second number"
second_number = gets.chomp.to_i

puts "What do you want to do?"
puts "Enter 1 for multiply, 2 for addition, 3 for subtraction, 4 for division, 5 for mod"
user_entry = gets.chomp.to_i

puts "You selected #{user_entry}"

if user_entry < 6
    puts "The first number #{calc_options[user_entry][0]} the second number is: #{calc_options[user_entry][1].call(first_number, second_number)}"
else
    puts "Sorry that is not an option" 
end




