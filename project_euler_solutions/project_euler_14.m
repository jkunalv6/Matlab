greatest = 0;
count = 0;
temp =0 ;
for a = 1:1:1000000
    n = a;
    count = 0;
    while n>1
        if rem(n,2)==0 
            n = n/2;
        else
            n = 3*n + 1;
        end 
        count= count + 1;
    end 
    if count> greatest;
        greatest= count;
        temp = a ;
    end 
end 
disp(temp);


