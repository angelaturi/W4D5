def my_min(arr)
    smallest_num = arr[0] #0(1)
    arr.each_with_index do |ele1, idx1| #0(n)
        arr.each_with_index do |ele2, idx2| #0(n)
            if idx2 > idx1 && ele1 < ele2 && ele1 < smallest_num #0(1)
                smallest_num = ele1 #0(1)
            end
        end
    end
    smallest_num #0(1)
end
# 0(1) + 0(n) * 0(n) * 0(1) * 0(1) +0(1)
# 0(n^2)

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min(list)  # =>  -5

def my_min2(arr)

    min = arr[0] #1
    arr.each do |ele| #n
        if ele < min #1
            min = ele #1
        end
    end
    min #1
end

#1 + n *1 * 1 + 1
#n

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min2(list)  # =>  -5

def largest_subsum(list)

    subs = []
    (0...list.length).each do |idx1|
        (idx1...list.length).each do |idx2|
            subs << list[idx1..idx2]
        end
    end
    subs.map {|sub| sub.sum }.max

end

list = [5, 3, -7]
p largest_subsum(list) # => 8
