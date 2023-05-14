ORDERED ARRAY:
Same as an array but in order!

INSERTION:

We need to always check if the value on its left is greater than the number we are trying to insert, in this case lets say we have an array like 

[3, 8, 9, 40]

and we want to insert 12 in this list, so we start at the index 0, its 3, so we continue checking the value in the right, if its greater than the number we want to insert, then we insert it right here. 

so it will check 3, 8, 9, then 40 so we know that 40 is greater than 12, so we put it right before at index 4, and reallocate 40 to the right.

So the insertion is always N + 2, except if you are trying to insert in the end of the array, that would be N + 1 because no shifts will occour

N to search the array so its based on the amount of elements, and where we are trying to insert it;

1 to shift the values when we find the index;

1 to insert it in the right place;

SEARCHING:

