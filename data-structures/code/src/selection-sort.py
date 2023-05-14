def selection_sort(array, size):

    for index in range(size):  # looping for each element
        lowest_element = index
        # we start here with the first element of our array.

        for j in range(index+1, size):
            # look for each element of our array AFTER our actual index
            if array[j] < array[lowest_element]:
                lowest_element = j

        (array[index], array[lowest_element]) = (
            array[lowest_element], array[index])
        # swapping elements when we found that the current element is lower than
        # the one we were comparing


def main():
    unsorted_array = [-3, 809, 65, 345, 32, 2, 0, 1]
    size = len(unsorted_array)
    selection_sort(unsorted_array, size)
    print('array after sorting')
    print(unsorted_array)


main()
