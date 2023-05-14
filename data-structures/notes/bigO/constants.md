Big O Notation ignores constants.

So it never includes numbers outside of expoents.
So theres no O(N ^2 / 2 ) for example, it will be considered O(N^2).

**ROUGH EXPLANATION**

"The same applies to algorithm efficiencies. If we compare, say, an O(N) algo-
rithm with an O(N2) algorithm, the two efficiencies are so different that it
doesn’t really matter whether the O(N) algorithm is actually O(2N), or O(N / 2)
or even O(100N)."


"Big O Notation doesn’t care merely
about the number of steps an algorithm takes. It cares about the long-term
trajectory of the algorithm’s steps as the data increases. O(N) tells a story of
straight growth—that the steps increase in a straight line according to some
proportion of the data. This is true even when the steps are 100N. O(N2) tells
a different story—one of exponential growth."

--Common Sense Guide to DSA,page 73.

"Big O Notation only takes into account the highest order of N when we have
multiple orders added together."

--Common Sense Guide to DSA, page 87.
