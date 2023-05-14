Speed measuring in code is about HOW MANY STEPS it takes;
Not how fast it runs in terms of SECONDS;
Because that would make it dependent on the hardware its running;
For example;

```python
def print_numbers_version_one():
    number = 2
    while number <= 100:
    # If number is even, print it:
    if number % 2 == 0:
    print(number)
    number += 1

def print_numbers_version_two():
    number = 2
    while number <= 100:
    print(number)
    # Increase number by 2, which, by definition,
    # is the next even number:
    number += 2
```

Both does the same absolutely thing;
Yet the second one does half of the steps because it counts only 50 numbers;
So its objectively better and faster;