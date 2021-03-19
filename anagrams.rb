def first_anagram?(str1, str2)
    new_arr = [] #0(1)
    arr2 = str1.split("").permutation.to_a #0(n!)
    arr2.each do |ele| #0(n!)
        new_arr << ele.join("") #0(1)
    end
    new_arr.each do |ele| #0(n!)
        if ele == str2 #0(1)
            return true #0(1)
        end
    end
    false #0(1)
end
    
#0(1) + #0(n!) + #0(n!) * #0(1) + #0(n!) * #0(1) * #0(1) + #0(1)
#0(n!) + #0(n) + #0(n)
#0(n!)

def second_anagram?(str1, str2)
    return false if str1.length != str2.length #0(1)
    (0...str1.length).each do |i| #0(n)
        if str2.include?(str1[i]) #0(n)
            str2.delete!(str1[i]) #0(n)
        end
    end
    if str2.length == 0 #0(1)
        return true  #0(1)
    else
        false #0(1)
    end
end

#0(n^3)

# v1

def third_anagram?(str1,str2, alphabet)
    alphabet || = ("a".."z").to_a # O(1)

    sorted = false # O(1)
    while !sorted # O(n)
        sorted = true # O(1)
        (0...str1.length - 1).each do |i| # O(n)
            if alphabet.index(str1[i]) > alphabet.index(str1[i + 1]) # O(1)
                str1[i], str1[i + 1] = str1[i + 1], str1[i] # O(1)
                sorted = false # O(1)
            end
        end
    end
    
    sorted = false # O(1)
    while !sorted # O(n)
        sorted = true # O(1)
        (0...str2.length - 1).each do |i| # O(n)
            if alphabet.index(str2[i]) > alphabet.index(str2[i + 1]) # O(1)
                str2[i], str2[i + 1] = str2[i + 1], str2[i] # O(1)
                sorted = false # O(1)
            end
        end
    end

    str1 == str2 # O(1)
end

# O(n^2)

# v2

def third_anagram?(str1,str2)
    
    str1.split("").sort == str2.split("").sort # O(n^2)
    
end

# O(n^2)


def fourth_anagram?(str1, str2)
    hash = Hash.new(0) #0(1)

    str1.each_char { |char| hash[char] += 1 } #0(n)
    str2.each_char { |char| hash[char] -= 1 } #0(n)
    hash.all? { |k,v| v.zero? } #0(n)

end
#0(n)

p first_anagram?("gizmo", "sally")    #=> false
p first_anagram?("elvis", "lives")    #=> true

p second_anagram?("gizmo", "sally")    #=> false
p second_anagram?("elvis", "lives")    #=> true

p third_anagram?("gizmo", "sally")    #=> false
p third_anagram?("elvis", "lives")    #=> true

p fourth_anagram?("gizmo", "sally")    #=> false
p fourth_anagram?("elvis", "lives")    #=> true