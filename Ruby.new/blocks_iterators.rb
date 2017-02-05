#blocks

#http://rubylearning.com/satishtalim/ruby_blocks.html

#-Code blocks are anonymous functions that provide closure like functionality. The execution flow passes to the code block, due to yield method.
def function_Name

  puts "Sample Function Name"
  yield()
  puts "monkey"

end

function_Name { puts "Insside the Code Block" }


puts "-----------------------------"


#code block paramets are enclosed between |parameter_name|

def code_block_parameter
  puts "random function name"
  yield 10, 20, 30
  #yield (10,20,30) --> not working

  puts "after Yield, Yes () are optional"


end

# code blocks {}  are passed next to function calling.
code_block_parameter() { |param1, param2, param3| puts param1+param2+param3 }
#multi linne do .. end code block
code_block_parameter() do |param1, param2, param3|
  puts param1*param2*param3
end
#yeild method call and code block should have similar parameters (or atleast similar operations ), the below code didn't work
# code_block_parameter do
# |str, number|
#   puts str + "----" +number.to_s
# end

# Preparing for ITERATORS USING BLOCKS

day1 = ["kshitij", "is", "\"trying\"", "to", "think", "in", "ruby"]
day2 = %w(kshitij pings Weiser every 1hour and asks stupid quesitons about Ruby) #syntactic sugar, i like this
day3 = []
day3<< "kshitij"
day3<< "has"
day3<< "lot"
day3<< "to read"

# puts day1.to_s()
# puts day2.inspect()
# puts day3.to_s

#Iterators using each() method of array

day2.each { |array_element| print array_element+ " " }

#Iterators with ind

day3.each_with_index do |a, b|
  puts "#{a} is #{b} Element"
end




#Custom Iterator
