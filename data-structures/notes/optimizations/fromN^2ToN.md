**OBJECTIVE**
Check if theres any repeated value in an array of N elements.

**THE FUNCTION**

```javascript
function hasDuplicateValue(array) {
    for(let i = 0; i < array.length; i++) {
    for(let j = 0; j < array.length; j++) {
        if(i !== j && array[i] === array[j]) {
            return true;
        }
        }
        }
    return false;
}
```

**THE PROBLEM**

nested loops like this usually perform like N^2 since for each iteration you loop again inside it
 a quadratic problem!

 FOR EACH LOOP
    AN ENTIRE LOOP!

**THE SOLUTION**
Another solution that is pretty simple but reduces the complexity to  O(N) is this one:

```javascript
function hasDuplicateValue(array) {
    let existingNumbers = []; //create an empty array
    for(let i = 0; i < array.length; i++) {
        if(existingNumbers[array[i]] === 1) { //we check if the current element is equal to ONE in the existing number array index, so if we have number 5 here for example, it will check if the element at the index of the same value as our element is 1 in existingNumbers
            return true; //
        } else {
            existingNumbers[array[i]] = 1; //if its not, then we just put 1 to the index, in this case we put the value 1 at the 5th index of existing numbers
        }
    }
    return false;
}
```

Basically this algorithm uses the INDEX of an array to keep track of which element we already found in the array, so we compare the ELEMENT from our loop to the INDEX of same value of our existingNumbers array, if its 1 (so we already found it)
we return true so there are duplicates.
