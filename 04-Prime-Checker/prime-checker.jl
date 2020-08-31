
# Brute force prime function.
function isprime(n)
    for i = 2:Int(floor(sqrt(n)))
        if n % i == 0; 
            return false
        end
    end
    return true
end            

@time isprime(1000000000000000003)
