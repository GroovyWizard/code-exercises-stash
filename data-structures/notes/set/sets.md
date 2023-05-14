Basically the same as an array! But without repeated values;

**READING**
The same as an array, same complexity, ONE STEP only;

**SEARCHING**
The same as an array too, same complexity, N steps to search for a value within a set (depends on the size);

**INSERTION**
Now the scary part, do not forget that sets do not support repeated values, so it needs to check if theres no repeated value;
So it requires a search too!
N + 1 in this case, search the entire array, then insert

The worst case here is inserting in the first index of the set, so 2N + 1 steps to complete:
N -> Search all the elements
N -> Shift right all the elements
1 -> Insert in the begginning

