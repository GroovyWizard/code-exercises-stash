#Kata link: https://www.codewars.com/kata/551f37452ff852b7bd000139/train/python
# Implement a function that adds two numbers together and returns their sum in binary. The conversion can be done before, or after the addition.
# The binary number returned should be a string.

def transform_decimal_into_binary(number):
    remainders = []
    result = ""
     
    while number > 0:
        remainders.append(number % 2)
    #with really big numbers int(number/2) to round will not work
        number = number//2
    
    #using reverse here because on binary we start from the Most Significant Bit, in our case the last remainder 
    for remainder in reversed(remainders):
        result += str(remainder)
    
    return result
    
def add_binary(a,b):
    result = a + b 
    result = result
    result_binary = transform_decimal_into_binary(result)
    
    return result_binary