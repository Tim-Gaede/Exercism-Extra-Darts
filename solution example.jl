unction score(x::Real, y::Real)
    dist = √(x^2 + y^2)
    if dist ≤  1.0;    return 10;    end # in inner circle
    if dist ≤  5.0;    return  5;    end # in middle circle
    if dist ≤ 10.0;    return  1;    end # in outer circle
    return 0 # outside the circles
end
