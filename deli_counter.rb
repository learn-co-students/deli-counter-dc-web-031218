require "pry"

def line(deli_line)
  if deli_line.length == 0
    puts "The line is currently empty."
  else
    current_line = ["The line is currently:"]
    place = 1
    deli_line.each do |i|
      current_line.push("#{place}. #{i}")
      place+=1
    end
    puts current_line.join(" ")
  end
end

def take_a_number(deli_line, new_person)
  deli_line.push(new_person)
  puts "Welcome, #{new_person}. You are number #{deli_line.length} in line."
end

def now_serving(deli_line)
  if deli_line.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{deli_line.shift}."
  end
end

#deli_line = ["Ryan", "Megan", "Carol", "Eric"]
#line(deli_line)
