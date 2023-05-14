def bubble_sort(list):
    #tracks the rightmost
    #NON sorted value, this is why we initialize it with the last index because its not sorted
    unsorted_until_index = len(list) - 1

    sorted = False
    while not sorted:
        sorted = True #this is a trick, we assume the array is always sorted UNTIL we verify that theres a swap
        for i in range(unsorted_until_index):
            if list[i] > list[i+1]:
                list[i], list[i+1] = list[i+1], list[i]
                #now the trick, since it was caught on IF clause, there was a swap for sure, then
                #we set sorted to FALSE.
                sorted = False
        #now we decrement our unsorted_until_index, because the rightmost value was already swapped!
        unsorted_until_index -= 1
    return list


def main():
    result = bubble_sort([98, 78, 65, 1])
    for count, i in enumerate(result):
        print("Value", i, "Index", count)


main()
