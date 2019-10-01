def score(x, y):
    dist = (x**2 + y**2)**0.5
    if dist <=  1.0:    return 10 # in inner circle
    if dist <=  5.0:    return  5 # in middle circle
    if dist <= 10.0:    return  1 # in outer circle
    return 0 # outside the circles
