puts "What is your first name?"
first_name = gets.chomp
puts "You're first name is #{first_name}"

puts "What is your last name?"
last_name = gets.chomp

puts "Enter a number to multiply by 2"
input = gets.chomp
# input is a string so this will not do what we want
puts input * 2
# cast to int
puts input.to_i * 2