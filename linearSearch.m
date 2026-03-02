% Linear Search Program

arr = [10, 25, 30, 45, 60, 75];   % Input array
key = 45;                        % Element to search

found = false;

for i = 1:length(arr)
    if arr(i) == key
        fprintf('Element %d found at position %d\n', key, i);
        found = true;
        break;
    end
end

if ~found
    fprintf('Element %d not found in the array\n', key);
end
