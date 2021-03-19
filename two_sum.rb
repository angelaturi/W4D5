def bad_two_sum?(arr, target)
    arr.each_with_index do |ele1, id1| #0(n)
        arr.each_with_index do |ele2, id2| #0(n)
            return true if id2 > id1 && ele1 + ele2 == target #0(1)
        end
    end
    return false #0(1)
end
#0(n) * #0(n) * #0(1) + #0(1)
#0(n^2)

arr = [0, 1, 5, 7]
p bad_two_sum?(arr, 6) # => should be true
p bad_two_sum?(arr, 10) # => should be false

def okay_two_sum?(arr, target)
    sorted = arr.sort

    mid = arr.length / 2

    if target < arr[mid]
        return okay_two_sum?(left, target)
    else
        res = okay_two_sum?(right, target)
        if res.nil?
            nil
        else
            (mid + 1) + res
        end
    end

    false
end



arr = [0, 1, 5, 7]
p two_sum?(arr, 6) # => should be true
p two_sum?(arr, 10) # => should be false

# arr = [0, 1, 5, 7]
# two_sum?(arr, 6) # => should be true
# two_sum?(arr, 10) # => should be false

# arr = [0, 1, 5, 7]
# two_sum?(arr, 6) # => should be true
# two_sum?(arr, 10) # => should be false
