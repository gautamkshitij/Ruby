#Reading writing from the Console

#http://rubylearning.com/satishtalim/ruby_blocks.html

line = gets()
print "YOu said "+line+" using gets()"


#Reads from the standard input and stores the result in line variable
#side effect of doing this: it stores the data in global variable $_ --> and if you just print (without any variable), it outputs the global variable

# $_ = "kshitij" --> global variable assigned.
# print --> prints the global variable $_., when no variable is mentioned, the global variable is assumed.


#ARGF.each { |line| print line if line =~ /Ruby/ }

ARGF.each { |line| print "You said this ".+(line) }