% malabanan, angelo - perez, eric
% 2-ece-a
% ece2112 machine problem 5 (matlab solution)

n = -2:203;
xeq = input('Input a function, x(n): ');

for a = 1:200
    
    if a == 1
        X(a) = xeq(a+2);
        Y(a) = -1.5*xeq(a+2) + 2*xeq(a+3) - 0.5*xeq(a+4);
        
    elseif a > 1 && a <= 198
        X(a) = xeq(a+2);
        Y(a) = 0.5*xeq(a+3) - 0.5*xeq(a+1);
        
    elseif a == 199
        X(a) = xeq(a+2);
        Y(a) = 1.5*xeq(a+2) - 2*xeq(a+1) + 0.5*xeq(a);
        
    end
end

n = 0:199;
plot(n,X,'g');
hold on;
plot(n,Y,'r');
legend('x(n)','y(n)');
grid on;
xlabel 'n'; 
ylabel 'x(n) and y(n)'; 
title 'Graphs of x(n) and y(n)';