require "byebug"
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

# def largest_subsum(list)

#     subs = [] # O(1)
#     (0...list.length).each do |idx1| # O(n)
#         (idx1...list.length).each do |idx2| # O(n)
#             subs << list[idx1..idx2] # O(1)
#         end
#     end
#     subs.map {|sub| sub.sum }.max # O(n)

# end

# O(1) + O(n) * O(n)* O(1) + O(n)

# O(n^2)

list = [5, 3, -7]
# p largest_subsum(list) # => 8

# def largest_subsum(list)
#     max = list[0] 
#     current_sum = list[0]

#     list.each_with_index do |ele, i|
#         next_num = list[i + 1]
#         current_sum = ele + next_num
#         if current_sum > max
#             max = current_sum
#         end

#         if current_sum < 0
#             current_sum = 0
#         end
#     end

#     max

# end

def largest_subsum(list)
    max = list[0] 
    current_sum = list[0]

    (1...list.length).each do |i|
        # debugger
        if current_sum < 0
            current_sum = 0
        end
        current_sum += list[i]
        if current_sum > max
            max = current_sum
        end
    end

    max

end

list = [5, 3, -7]
p largest_subsum(list) # => 8

list = [2, 3, -6, 7, -6, 7]
p largest_subsum(list) # => 8 (from [7, -6, 7])

list = [-5, -1, -3]
p largest_subsum(list) # => -1 (from [-1])
