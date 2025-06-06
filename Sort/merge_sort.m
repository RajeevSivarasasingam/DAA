% Main function to perform Merge Sort
function sorted = mergeSort(arr)
    % If the array has 1 or 0 elements, it's already sorted
    if length(arr) <= 1
        sorted = arr;
        return;
    end

    % Find the middle index to split the array
    mid = floor(length(arr) / 2);

    % Recursively sort the left half
    left = mergeSort(arr(1:mid));

    % Recursively sort the right half
    right = mergeSort(arr(mid+1:end));

    % Merge the sorted halves
    sorted = merge(left, right);
end

% Helper function to merge two sorted arrays
function result = merge(left, right)
    result = [];  % Initialize an empty array to hold the result
    i = 1;        % Index for the left array
    j = 1;        % Index for the right array

    % Merge elements in order until one array is exhausted
    while i <= length(left) && j <= length(right)
        if left(i) <= right(j)
            result(end+1) = left(i);  % Append smaller element
            i = i + 1;
        else
            result(end+1) = right(j); % Append smaller element
            j = j + 1;
        end
    end

    % Add remaining elements from left array (if any)
    while i <= length(left)
        result(end+1) = left(i);
        i = i + 1;
    end

    % Add remaining elements from right array (if any)
    while j <= length(right)
        result(end+1) = right(j);
        j = j + 1;
    end
end
