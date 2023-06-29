temp =0 ;
temp2=0;
temp3=0;
count = 2;
greatest =0;
for a = 100:1:999
    for b = 100:1:999
        temp = a*b;
        temp2 = temp;
          str = num2str(temp);
    tf = strcmp(str, fliplr(str));
    if tf == 1
        if temp> greatest 
            greatest = temp;
        end

    end 

    end
end

    disp(greatest);


