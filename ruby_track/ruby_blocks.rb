What Are Blocks?

At its most basic, a block is statements of code that are grouped together. The statements can be grouped inside of curly braces or between the do and end keywords.

  3.times { puts "Hello world!" }

  Multi line blocks are usually written using the do and end format.
  Single line blocks are usually written using curly braces {}.

the yield keyword will jump out of the method and execute the block:

def get_name
  print "Enter your name: "
  name = gets.chomp
  yield name
  name
end

my_name = get_name do |your_name|
  puts "That's a cool name, #{your_name}!"
end

puts "my_name: #{my_name}"
