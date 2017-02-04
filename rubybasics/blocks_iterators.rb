#blocks
=begin
-Code blocks are anonymous functions that provide closure like functionality. The execution flow passes to the code block, due to yield method.




=end
def function_Name

  puts "Sample Function Name"
  yield()
  puts "monkey"

end

function_Name { puts "Insside the Code Block" }