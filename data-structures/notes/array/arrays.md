Arrays are allocated in a continuous form in the memory;


READING OPERATION: 
Kinda ok, if you know previously where is the index of the data you want from array;
It can be find pretty fast since arrays are continuous in the memory;

SEARCHING OPERATION:
Now the scary part, very scary;
What if you want to know where the number 98 is located;
But inside an array with 2789 random numbers without any kind of sorting?
Scary and slow, very slow.

INSERTING OPERATION:
Depends where you want to insert! Inserting in the end of the list is pretty fast;
BUT THERES ONE THING! Arrays are pre allocated, if theres no room left in the array;
The computer will need to copy your entire array and create a new one adding the element to it.
And thats slow as hell. 
*Most of the programming languages take care for this thing for you.

If you want to insert in the begginning or in the middle of the array where theres already a occupied index;
There would happen a shift of the already allocated data to the right, then finally inserting your data in the specified index; **N + 1** in this case.

DELETING OPERATION:
One step to delete but still needs to shift the array, empty cells make the array inneficient, so the worst case scenario here is definetly trying to delete in the start of the array, where you need to shift the entire array back. So imagine a 500 elements array, 499 shifting the elements after deleting!
