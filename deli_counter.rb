def line(arr)
  if arr.length == 0
    puts "The line is currently empty."
  else
    people_in_line = String.new
    arr.each_with_index{|name, position| people_in_line.concat(" #{position + 1}. #{name}")}
    puts "The line is currently:#{people_in_line}"
  end
end# Write your code here.

def take_a_number(arr, new_cust)
  if arr.length == 0
    arr.push(new_cust)
    puts "Welcome, #{new_cust}. You are number #{arr.length} in line."
  else
    arr.push(new_cust)
    puts "Welcome, #{new_cust}. You are number #{arr.length} in line."
  end
end

def now_serving(arr)
  if arr.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{arr[0]}."
    arr.delete(arr[0])
  end
end
