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
    sorted = arr.sort # O(nlog(n))
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

# def sum?(arr, target)
#     sorted = arr.sort
#     sorted.each_with_index do |ele,idx|
#         answer = sorted.bsearch(target - ele)
#             return true if answer != idx && answer != nil
#         end
    
#     end
#     return false
# end

# O(nlog(n))

# arr = [0, 1, 5, 7]

# p okay_two_sum?(arr, 6) # => should be true
# p okay_two_sum?(arr, 10) # => should be false


def two_sum?(arr, target)
    hash = {} #0(1)

    arr.each do |ele| #0(n)
        return true if hash[target - ele] #0(1)
        hash[ele] = true #0(1)
    end

    false#0(1)
end

#0(n)

# # arr = [0, 1, 5, 7]
# p two_sum?(arr, 6) # => should be true
# p two_sum?(arr, 10) # => should be false

def four_sum?(arr, target)

    hash = {} # checks elements
    hash2 = {} # contains sums of two elements from arr
    hash3 = {} # contains sums of three elements from arr
    arr.each do |ele|
        return true if hash3[target-ele]
        hash2.each_key do |key|
            hash3[key + ele] = true
        end
        hash.each_key do |k|
            hash2[k+ele] = true
        end
        hash[ele] = true
    end
    false
end


arr = [0, 1, 5, 7, 10, 12, 15]
p four_sum?(arr,64) 