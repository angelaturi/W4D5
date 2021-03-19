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
# p bad_two_sum?(arr, 6) # => should be true
# p bad_two_sum?(arr, 10) # => should be false

def okay_two_sum?(arr, target)
    sorted = arr.sort # O(n^2)
    i = 0 # O(1)
    k = arr.length - 1 # O(1)
    while i < k # O(n)
        if target > arr[i] + arr[k] # O(1)
            i += 1 # O(1)
        elsif target < arr[i] + arr[k] # O(1)
            k -= 1 # O(1)
        else
            return true # O(1)
        end
    end
    return false # O(1)
end

# O(n^2)

# arr = [0, 1, 5, 7]

# p okay_two_sum?(arr, 6) # => should be true
# p okay_two_sum?(arr, 10) # => should be false


def two_sum?(arr, target)
    hash = {}

    arr.each do |ele|
        return true if hash.has_key?(target - ele)
        hash[ele] = true 
    end

    false
end


arr = [0, 1, 5, 7]
p two_sum?(arr, 6) # => should be true
p two_sum?(arr, 10) # => should be false
