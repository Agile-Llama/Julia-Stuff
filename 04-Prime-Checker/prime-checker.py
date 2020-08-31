def prime_number(x):
    if x < 2 :
        return False
    if x == 2:
        return True
    if not x & 1:
        return False
    for n in range (3,int(x**0.5)+1,2):
        if x %n == 0:
            return False
        else:
            return True
