# =====WARM-UP======
a = 9
b = 32
println(a)
println(b)
println(a%b)

# ====EUCLEDIAN ALGORITHM WITH LOOP=====
function gcd_loop(a,b)
    while(b!=0)
        r = a%b
        a = b
        b = r
    end
    return a
end

println("GCD: ", gcd_loop(a,b))

# =====EXTENDED GCD======
function extended_gcd(a, b)
    if b == 0
        return (a, 1, 0)
    end

    g, s1, t1 = extended_gcd(b, a % b)
    s = t1
    t = s1 - (a ÷ b) * t1
    return (g, s, t)
end

e,f = 30,18
g,s,t = extended_gcd(e,f)

println("gcd = ", g)
println("s = ", s)
println("t = ", t)
println("Verification: ", s*e + t*f)