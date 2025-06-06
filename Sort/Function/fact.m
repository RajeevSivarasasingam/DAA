% factorial
function fact()
n=input('Enter your Number: ');
fact=1;
if n==0 || n==1
    fprintf('Answer:%d\n',fact);
elseif n<0
    disp("Enter a positive value!!")
else
    for i=1:n
        fact=fact*i;
    end
    fprintf("Answer: %d\n",fact)
end
end