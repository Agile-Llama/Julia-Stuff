using DelimitedFiles

function quicksort(array, i = 1, j = length(array))
    # Break out of the recursion. List is ordered.
    if j < i
        return array
    else   
        # Use a random element of the array as a pivot. 
        pivot = array[rand(i:j)] 

        # Both of these hold a number. Used to get a number from an array. 
        left, right = i, j
        while left <= right
            while array[left] < pivot
                left += 1
            end
            while array[right] > pivot
                right -= 1
            end
            if left <= right
                array[left], array[right] = array[right], array[left]
                left += 1
                right -= 1
            end
        end
        # Recusive call.
        quicksort(array,i,right)
        quicksort(array,left,j)
    end
end

# numbers = [99, 19123, 22, 64, 561, 26, 88, 12, 4567, 1, 93, 77, 15, 73, 838, 734, 25372, 93847, 192]
# println("Unordered list: $numbers")

# Open a file with alot of numbers.
numbers = readdlm("/Users/agilellama/Desktop/Julia-Stuff/unordered-numbers", '\n')

# benchmark.
@time begin
quicksort(numbers)
end

# Write to a file with the numbers ordered.
open("/Users/agilellama/Desktop/Julia-Stuff/ordered-numbers", "w") do io
    writedlm(io, numbers)
end;
