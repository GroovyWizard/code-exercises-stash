1. Use Big O Notation to describe the time complexity of the following function
that determines whether a given year is a leap year:

function isLeapYear(year) {
    return (year % 100 === 0) ? (year % 400 === 0) : (year % 4 === 0);
}

R:
O(1)

2. Use Big O Notation to describe the time complexity of the following function
that sums up all the numbers from a given array:


function arraySum(array) {
    let sum = 0;
    for(let i = 0; i < array.length; i++) {
    sum += array[i];
}

R:
O(N)


3. The following function is based on the age-old analogy used to describe
the power of compounding interest:
Imagine you have a chessboard and put a single grain of rice on one
square. On the second square, you put 2 grains of rice, since that is
double the amount of rice on the previous square. On the third square,
you put 4 grains. On the fourth square, you put 8 grains, and on the fifth
square, you put 16 grains, and so on.
report erratum • discussChapter 3. O Yes! Big O Notation • 46
The following function calculates which square you’ll need to place a
certain number of rice grains. For example, for 16 grains, the function
will return 5, since you will place the 16 grains on the fifth square.
Use Big O Notation to describe the time complexity of this function, which
is below:

function chessboardSpace(numberOfGrains) {
let chessboardSpaces = 1;
let placedGrains = 1;
while (placedGrains < numberOfGrains) {
placedGrains *= 2;
chessboardSpaces += 1;
}
return chessboardSpaces;
}

R: O(Log N)
