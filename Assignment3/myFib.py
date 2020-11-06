

def get_fibonacci_number(n):
    n = int(n)
    if n == 1:
        return 1
    elif n == 2:
        return 1
    else:
        return get_fibonacci_number(n-1) + get_fibonacci_number(n-2)