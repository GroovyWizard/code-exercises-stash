#the magic here is that an ordered array
#is much faster for an index search in some conditions
#because since our array is ordered, if the current element
#is greater than the value we are searching
#we can simply break the execution early!
#the worst case of course is looking for a value in the end of the array
#or a bigger value than the end of the array
#this will make our searching N 

def linear_search(array, search_value)
    array.each_with_index do |element, index|
        if element == search_value
            return index
        
        elsif element > search_value 
            return "Not found"
        end 
    end 
end 

mock_ordered_array = [ 2, 9, 12, 98, 202]

index = linear_search(mock_ordered_array, 98)
fail_index = linear_search(mock_ordered_array, 3)
puts(index) #this will output 3, the index where 98 is, took 3 steps!
puts(fail_index) #will output not found, took 1 step only!
