# Write your code here.
katz_deli = []

def line(arr)
    ret_str = ""
    if arr.length == 0
        ret_str = "The line is currently empty."
    else 
        ret_str = "The line is currently:"
        arr.each.with_index(1) do |person, i|
            ret_str += " #{i}. #{person}"
        end 
    end
    puts ret_str
end 

def take_a_number(arr, person)
    arr << person 
    puts "Welcome, #{person}. You are number #{arr.length} in line."
end 

def now_serving(arr)
    if arr.empty? 
        puts "There is nobody waiting to be served!"
    else 
        puts "Currently serving #{arr.first}."
        arr.shift
    end
end  



take_a_number(katz_deli, "Ada") #=> Welcome, Ada. You are number 1 in line.
take_a_number(katz_deli, "Grace") #=> Welcome, Grace. You are number 2 in line.
take_a_number(katz_deli, "Kent") #=> Welcome, Kent. You are number 3 in line.

line(katz_deli) #=> "The line is currently: 1. Ada 2. Grace 3. Kent"

now_serving(katz_deli) #=> "Currently serving Ada."

line(katz_deli) #=> "The line is currently: 1. Grace 2. Kent"

take_a_number(katz_deli, "Matz") #=> Welcome, Matz. You are number 3 in line.

line(katz_deli) #=> "The line is currently: 1. Grace 2. Kent 3. Matz"

now_serving(katz_deli) #=> "Currently serving Grace."

line(katz_deli) #=> "The line is currently: 1. Kent 2. Matz"
