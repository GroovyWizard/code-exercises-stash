def insertion_sort(array):
    for index in range(1, len(array)):
        #loop through the entire array starting from the
        #second element in this case -332
        temp_value = array[index] #get the first element (-332)
        position = index - 1 #go to one index before this one
        while position >= 0:
            if array[position] > temp_value:
                #check if the actual element (87) is greater than -332
                #if it is then put it to the right
                array[position + 1] = array[position]
                #go one position before
                position = position - 1
            else:
                break
        array[position + 1] = temp_value
    return array


result = insertion_sort([87, -332, 1, 98, 43, 587, 990])

for element in result:
    print(element)

