
arr= 1:1000;
n=length(arr);
target=5;
found = false;

%linear search
 
tic
for i=1:1000
    if arr(i)==target
        found=true;
           index=i;
     break;
    end
end

if found
      fprintf("The target element index(use linear) : %d \n",index)
else
    disp("Traget element is not found \n")
end

linear_runtime=toc ;

%binary_search
tic
left=1;
right=length(arr);
index=-1;
 
while left <= right
    mid=floor((left + right)/2);
    if arr(mid)==target
        found =true;
        index=mid;
        break;
    elseif arr(mid)<target
        left=mid+1;
    else
        right=mid-1;
    end
end
if found
    fprintf("The target index(use binary): %d\n",index)
else
    fprintf("traget not found (binary) \n");
end

binary_runtime=toc;

    fprintf("linear runtime : %f \n",linear_runtime);
    fprintf("binary runtime: %f \n",binary_runtime);