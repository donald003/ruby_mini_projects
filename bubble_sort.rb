def bubble_sort(array)
    len = array.length

    (0...len).each do |i|
        swapped = false

        (0...len - i - 1).each do |j|
            if array[j] > array[j + 1]
                array[j], array[j + 1] = array[j + 1], array[j]
                swapped = true
            end
        end
        break unless swapped
        end
        p array
    end

bubble_sort([4,3,78,2,0,2])