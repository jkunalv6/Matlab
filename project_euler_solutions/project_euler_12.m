n = 1;
Dn = 2;
cnt = 0;
while cnt <= 500
    n = n + 1;
    n1 = n;
    if mod(n,2) == 0
        n1 = n / 2;
    end
    Dn1 = 1;
    for i = 2:n1
        if mod(n1,i) == 0
            ex = 0;
            while mod(n1,i) == 0
                ex = ex + 1;
                n1 = n1 / i;
            end
            Dn1 = Dn1 * (ex + 1);
        end
    end
    cnt = Dn * Dn1;
    Dn = Dn1;
end
triangle_number = n * (n - 1) / 2;
disp(triangle_number)
