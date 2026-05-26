using Oscar

Fq = GF(3)

R,x = polynomial_ring(Fq, :x)

function my_derivative(f)
    return derivative(f)
end

function my_gcd(f,g)
    return gcd(f,g)  
end

function sfpart(f)
    # factor_squarefree(f)
    f1 = derivative(f)
    u = gcd(f,f1)
    v = div(f,u)
    return v
end

factor_distinct_deg(x^6-x^5-4*x^4+2*x^3+5*x^2-x-2)

factor_distinct_deg(x^17+2*x^15+4*x^13+x^12+2*x^11+2*x^10+3*x^9+4*x^8+4*x^4+3*x^3+2*x^2+4*x)

function distinct(f)
    
    
end



my_derivative(x^2+x)

my_gcd(x^3 + x^2, x^2)

factor(sfpart(x^6-x^5-4*x^4+2*x^3+5*x^2-x-2))
sfpart(x^6-3x^5+6*x^3-3*x^2-3x+2)
sfpart(x^5-2*x^4-2*x^3+4*x^2+x-2)
sfpart(x^6-2x^5-4*x^4+6*x^3+7*x^2-4x-4)


factor(x^6-x^5-4*x^4+2*x^3+5*x^2-x-2)




# f5=x^17+2*x^15+4*x^13+x^12+2*x^11+2*x^10+3*x^9+4*x^8+4*x^4+3*x^3+2*x^2+4*x



# f17=x^18-7*x^17+4*x^16+2*x^15-x^13-7*x^12+4*x^11+7*x^10+4*x^9-3x^8-3*x^7+7*x^6-7x^5+7*x^4+7*x^3-3*x^2+5*x