1. For an array containing 100 elements, provide the number of steps the
following operations would take:
a. Reading
R: 1 step 

b. Searching for a value not contained within the array
R: N (100 steps)

c. Insertion at the beginning of the array
R: N + 1 (101 steps)

d. Insertion at the end of the array
R: 1 step

e. Deletion at the beginning of the array
R: N (100 steps) first delete than reallocate everything to left (the remaining 99)

f. Deletion at the end of the array
R: 1 step

2. For an array-based set containing 100 elements, provide the number of
steps the following operations would take:

a. Reading
1 step

b. Searching for a value not contained within the array
N (100 steps)

c. Insertion of a new value at the beginning of the set
2N + 1 (201 steps) first search the entire set (N or 100), then reallocate to right (N or 100), then insert (1)

d. Insertion of a new value at the end of the set
N + 1 (101 steps) first search the entire set (N or 100), then insert in the end (1)

e. Deletion at the beginning of the set
N (100 steps) delete from the first index (1) then reallocate the remaining elements (99)

f. Deletion at the end of the set
1 step (delete from the end will take always one step only)


3. Normally the search operation in an array looks for the first instance of
a given value. But sometimes we may want to look for every instance of
a given value. For example, say we want to count how many times the
value “apple” is found inside an array. How many steps would it take to
find all the “apples”? Give your answer in terms of N.

R: N 
Search the entire array (N) then count 1 for each apple;
