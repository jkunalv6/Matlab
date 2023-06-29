
count = 0;
sum = 0;
    for a =1000000:1:100000000
    c = a*(a+1)/2;
    for b = 1:1:c
        while b<c
            if rem(c,b)==0 
                count = count +1 ;
                sum = sum + b ;
                break 
            else 
                break 
            end 
        end 
    end

        if count > 500 && sum == c
            disp(c);
        else 
            count = 0;
            sum = 0;
        end 
    end 

              
