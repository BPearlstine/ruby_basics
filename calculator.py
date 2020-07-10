def multiply(first_num, second_num):
    return first_num * second_num

def divide(first_num, second_num):
    return first_num / second_num

def add(first_num, second_num):
    return first_num + second_num

def subtract(first_num, second_num):
    return first_num - second_num

def mod(first_num, second_num):
    return first_num % second_num

calc_options = {1: ['multiplied by',
                    multiply],
                2: ['added to',
                    add],
                3: ['subtracted by',
                    subtract],
                4: ['divided by',
                    divide],
                5: ['mod',
                    mod]}

first_number = int(input("Please enter your first number "))
second_number = int(input("Please enter your second number "))

print("What do you want to do?")
user_entry = int(input("Enter 1 for multiply, 2 for addition, 3 for subtraction, 4 for division, 5 for mod "))

print("You selected {}".format(user_entry))

if user_entry < 6:
    rtrn_string = "The first number {} the second number is: {}"
    print(rtrn_string.format(calc_options[user_entry][0], calc_options[user_entry][1](first_number, second_number)))
else:
    print("Sorry that is not an option")




