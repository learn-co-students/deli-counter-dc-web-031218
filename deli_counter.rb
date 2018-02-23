# this is my JS exercise, refactored for ruby, so
# some comments may be slightly off

katzDeliLine = []

def take_a_number(deli_array, name)
	# in case NAME argument is a number, make sure it is string:
	nameString = name.to_s
	# add the name to the array:
	deli_array.push(nameString)
	# calculate person's place in line,
	#place in line is array index plus one:
	placeInLine = deli_array.index(nameString) + 1;
	# function returns a string with variables embedded:
  puts "Welcome, #{nameString}. You are number #{placeInLine} in line."
  return "Welcome, #{nameString}. You are number #{placeInLine} in line."
end


def now_serving(deli_array)
	# make sure there is a line of customers, otherwise output standard.
	# if there is a line, first person in array is first person in line
	if deli_array.length > 0
		servingName = deli_array[0]
		# since now serving first in line, remove this name from the line:
		deli_array.shift
		# function returns a variable -- string with name embedded:
		message1 = "Currently serving #{servingName}."
    puts message1
		return message1
	else
		# if no line, standard output:
		message2 = "There is nobody waiting to be served!"
    puts message2
		return message2
	end
end

def line(deli_array)
	# make sure there is a line of customers, otherwise output standard.
	# if there is a line, produce message listing all those in the line:
	if deli_array.length > 0
		# begin constructing the message that will be output:
		message1 = "The line is currently: "
		# for-loop to iterate through the customers line array:
		deli_array.each_with_index do |val, index|
			# variables for respective name and place in line,
			# given location in the array:
			personInLine = deli_array[index]
			placeInLine = deli_array.index(personInLine) + 1
			# continue to construct the message that will be output:
			message1 += "#{placeInLine}. #{personInLine}"
			# as long as there is one more person in line than
			# current person added to the message, add a comma for formatting:
			if placeInLine < deli_array.length
				message1 += " "
			end
		end
	# with the message now constructed, output message:
	 puts message1
   return message1
	# if no line, standard output:
	else
		message2 = "The line is currently empty."
		puts message2
    return message2
	end

end
