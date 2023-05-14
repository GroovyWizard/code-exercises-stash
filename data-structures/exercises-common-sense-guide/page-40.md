1. Replace the question marks in the following table to describe how many steps
occur for a given number of data elements across various types of Big O:
    NElements   O(N)    O(log N)    O(N2)
    100         100     7(6.6...)   1e+200
    2000        2000    11          Infinity


2. If we have an O(N2) algorithm that processes an array and find that it
takes 256 steps, what is the size of the array?

16 elements, since 16^2 = 256

3. Use Big O Notation to describe the time complexity of the following func-
tion. It finds the greatest product of any pair of two numbers within a
given array:

```python
    def greatestProduct(array):
        greatestProductSoFar = array[0] * array[1]
        for i, iVal in enumerate(array):
            for j, jVal in enumerate(array):
                if i != j and iVal * jVal > greatestProductSoFar:
                    greatestProductSoFar = iVal * jVal
    return greatestProductSoFar
```
R: O(n^2) because of nested loops, so for every loop theres another one.





