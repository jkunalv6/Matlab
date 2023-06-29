b=1:1:20;
for a = 2520:10:1000000000
    c = a*ones(1,20);
    rem(c,b);
    if rem(c,b) == 0*ones(1,20)
         disp(a);
    
     end 
 end 
