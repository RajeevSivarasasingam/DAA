% Binary Search Program (Iterative)

arr = [5, 10, 15, 20, 25, 30, 35, 40];  % Sorted array
key = 25;                              % Element to search

low = 1;
high = length(arr);
found = false;

while low <= high
    mid = floor((low + high) / 2);

    if arr(mid) == key
        fprintf('Element %d found at position %d\n', key, mid);
        found = true;
        break;
    elseif arr(mid) < key
        low = mid + 1;
    else
        high = mid - 1;
    end
end

if ~found
    fprintf('Element %d not found in the array\n', key);
end
