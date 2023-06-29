n = 2^1000;
sum = 0;
while n > 0
    sum = sum + mod(n,10);
    n = floor(n/10);
end
disp(sum)
