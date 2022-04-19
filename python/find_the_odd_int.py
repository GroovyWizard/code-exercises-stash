def is_odd(number):
    if number % 2 != 0:
        return True
    else:
        return False

def find_it(seq):
    number_register = 0
    counter = 0 
    sorted_numbers = sorted(seq)  
    
    for count,number in enumerate(sorted_numbers):
        if count == 0:
            number_register = number
            counter+=1
        elif number == number_register:
            counter+=1
        else:
            if is_odd(counter):
                return number_register
            else:
                number_register = number
                counter = 1
    
    return number_register

#Given an array of integers, find the one that appears an odd number of times.
#There will always be only one integer that appears an odd number of times.
