a = 600851475143;
b = 1;
while b<a
    if rem(a,b) == 0 && isprime(b)
        c = b
    end
    b=b+1;
end

