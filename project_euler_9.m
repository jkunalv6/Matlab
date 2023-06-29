for a =1:1:1000
    for b = 2:1:1000
        for c =3:1:1000
           while a<b && b<c && c<1000
               if a^2 + b^2 == c^2 && a+b+c==1000
                   disp(a*b*c);
               else 
                   break 

               end
           end
        end
    end 
end

   

    