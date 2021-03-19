def first_anagram?(str1, str2)
    new_arr = [] #0(1)
    arr2 = str1.split("").permutation.to_a #0(n!)
    arr2.each do |ele| #0(n)
        new_arr << ele.join("") #0(1)
    end
    new_arr.each do |ele| #0(n)
        if ele == str2 #0(1)
            return true #0(1)
        end
    end
    false #0(1)
end
    
#0(1) + #0(n!) + #0(n) * #0(1) + #0(n) * #0(1) * #0(1) + #0(1)
#0(n!) + #0(n) + #0(n)
#0(n!)

def second_anagram?(str1, str2)
    return false if str1.length != str2.length 
    (0...str1.length).each do |i|
        if str2.include?(str1[i])
            str2.delete!(str1[i])
        end
    end
    if str2.length == 0
        return true 
    else
        false
    end
end

def third_anagram?(str1,str2)
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    
end


p first_anagram?("gizmo", "sally")    #=> false
p first_anagram?("elvis", "lives")    #=> true

p second_anagram?("gizmo", "sally")    #=> false
p second_anagram?("elvis", "lives")    #=> true

# p third_anagram?("gizmo", "sally")    #=> false
# p third_anagram?("elvis", "lives")    #=> true