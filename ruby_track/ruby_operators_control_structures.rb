Ruby Operators and Control Structures
>=  greater than or equal to
<=  less than or equal to
&&  and
||  or
( )         # Parentheses
!           # Not
**          # Exponentiation
% / *       # Modulus, Division, Multiplication
+ -         # Addition and Subtraction

def get_name()
  print "Enter your name: "
  return gets.chomp
end

name = get_name()
greet(name)

def greet(name)
  puts "Hi #{name}!"
end

print "Enter name: "
name = gets.chomp

if name == "Jason"
  puts "That's my name, too!"
else
  puts "Hi #{name}!"
end

print "What is your favorite number? "
number = gets.chomp.to_i

if (number == 3) || (number == 5)
  puts "That's my favorite number!"
elsif (number > 10) && (number.even?)
  puts "That's a pretty high even number!"
elsif (number.odd?) && (number % 3 == 0)
  puts "That number is divisible by 3 and odd, cool!"
end
