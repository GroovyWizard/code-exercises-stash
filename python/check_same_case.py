def same_case(a, b): 
    if not (a.isalpha() and b.isalpha()):
        return -1
    elif (a.isupper() and b.isupper() or a.islower() and b.islower()):
        return 1
    elif not (a.isupper() and b.isupper() or a.islower() and b.islower()):
        return 0

