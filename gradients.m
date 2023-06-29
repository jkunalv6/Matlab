 clearvars, clc
f = @(x,y) 1/4*x.^2 + y^2 ; % anonymous function  change for use
syms fs xs ys
fs = 1/4^xs.^2+ys.^2;

x = -5:.2:5;
y = -5:.2:5;
[X,Y] = meshgrid(x,y);
Z = f(X,Y);

surf(X,Y,Z), hold on
xlabel('x'),ylabel('y'),zlabel('z')



% gradient descent algorithm 

Df_x = diff(fs,xs);
Df_y = diff(fs,ys);

grad_x = matlabFunction(Df_x);
grad_y = matlabFunction(Df_y);

% initial conditions 

pts(1,1) = 4;
pts(1,2) = 5;
pts(1,3) = f(pts(1,1), pts(1,2));
alpha = 0.1;

% algo

err_x = 5 ;  err_y = 5;
i = 1;
while err_x  > 0.01 || err_y > 0.01

% calculate the next x,y,z subtract partial diffs

pts(1+i,1) = pts(i,1) - alpha*grad_x(pts(i,1));
pts(1+i,1) = pts(i,2) - alpha*grad_y(pts(i,2));
pts(1+i,3) = f(pts(i+1,1),pts(1+i,2));


err_x = abs(pts(1+i,1) -  pts(i,1));
err_y = abs(pts(1+i,2) - pts(i,2));


i = i+1;

if i > 200
    break 
end
end



scatter3(pts(:,1),pts(:,2),pts(:,3), 'r', 'filled');


fprintf("Reched target in %d iterations \n", length(pts))
fprintf("final pt is (x=%1.2f , y=%1.2f, z=%1.2f)\n", pts(end,1), pts(end,2), pts(end,3))





