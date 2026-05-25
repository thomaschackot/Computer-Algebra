function mytrivialfactor(n,b,l)
    for i in b:l
        d = gcd(i,n)
        if d > 1
            return d
        end
    end
    return -1
end

mytrivialfactor(50,6,10)

function trivial_factorization(n,b)
    factors = Int64[]
    temp_n = n
    current_val = 2
    
    while current_val <= b && temp_n > 1
        f = mytrivialfactor(temp_n, b, current_val)
        
        if f == -1
            break
        end

        push!(factors, f)
        temp_n ÷= f
        current_val = f 
    end
    
    return factors, temp_n
end

N = 10403
B = 500

# ======FIRST RUN========
@time trivial_factorization(N, B)

# #SECOND RUN
@time trivial_factorization(N, B)