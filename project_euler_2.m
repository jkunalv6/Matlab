a = 0;
b = 1;
d=0;


while(b<4000000-1)
     c= b;
    b = b+a ;
    a = c;
    if rem(b,2)==0
        d = d+b;
    end

end
d 

