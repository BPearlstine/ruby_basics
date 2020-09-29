# methods to call in the script
# simple wrappers for basic calc commands
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

def main():
    # calc_options hash has key:value pairs of
    # input option:['string response', method_to_call]
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
    # start of output
    print("Simple Calculator\n")
    # big ol' line across the screen
    for i in range(21):
        print("-", end = '')

    # set user_entry to 0, as that is an unused int
    user_entry = 0

    # as long as the user_entry is not six allow them to continue
    # to do maths
    while user_entry != 6:
        print()
        # have user select which method will be called
        # and cast to int
        print("What do you want to do?")
        user_entry = int(input("Enter 1 for multiply, 2 for addition, 3 for subtraction, 4 for division, 5 for mod "))

        # display selection
        print("You selected {}".format(user_entry))

        # check that the number entered by the user is within the
        # possible options (length of hash + 1), if not lettem know

        if user_entry < len(calc_options) + 1 and user_entry != 0:
            # get first number and cast to int
            first_number = int(input("Please enter your first number "))
            # get second number and cast to int
            second_number = int(input("Please enter your second number "))
            # using the input as the key, first index of the list in the value is
            # added to the string, second index of the list is called and then
            # added to the string.
            rtrn_string = "The first number {} the second number is: {}"
            print(rtrn_string.format(calc_options[user_entry][0], calc_options[user_entry][1](first_number, second_number)))
        elif user_entry == 6:
            print("Goodbye")
        else:
            print("Sorry that is not an option")
            break

if __name__ == "__main__":
    main()
