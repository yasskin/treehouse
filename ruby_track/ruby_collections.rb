Ruby Collections

Code Samples

def create_list
  print "What is the list name? "
  name = gets.chomp
  hash = { "name" => name, "items" => Array.new }
  return hash
end

def add_list_item
  print "What is the item called?"
  item_name = gets.chomp

  hash = { "name" => name }
  return hash
end

list = create_list()
puts list.inspect

Hash Methods

item = Hash.new
item = {}
hash.keys
hash.has_keys?()
hash.invert
hash.length
hash.shift - removes value and returns it as key/value pair
hash.inspect

Create an array with dot notation:

array = Array.new

Create an array with three items:

array = Array.new(3, "Jason")

Create an empty array with bracket notation:

array = []

Create an array using brackets with three items:

array = ["milk", "eggs", "bread"]

Create an array using the %w notation which contains three strings:

array = %w(milk eggs bread)
Create an array using the %W notation which contains three strings and one is interpolated:

item = “milk”
array = %W(#{item} eggs bread)

grocery_list << "carrots"
grocery_list.push("potatoes")
grocery_list.unshift("celery")
grocery_list += ["ice cream", "pie"]
grocery_list << 1

puts grocery_list.inspect

def create_list
  print "What is the list name? "
  name = gets.chomp

  hash = { "name" => name, "items" => Array.new }
  return hash
end

def add_list_item
  print "What is the item called? "
  item_name = gets.chomp

  print "How much? "
  quantity = gets.chomp.to_i

  hash = { "name" => item_name, "quantity" => quantity }
  return hash
end

def print_separator(character="-")
  puts character * 80
end

def print_list(list)
  puts "List: #{list['name']}"
  print_separator()

  list["items"].each do |item|
    puts "\tItem: " + item['name'] + "\t\t\t" +
         "Quantity: " + item['quantity'].to_s
  end

  print_separator()
end

list = create_list()

puts "Great! Add some items to your list."

list['items'].push(add_list_item())
list['items'].push(add_list_item())
list['items'].push(add_list_item())

puts "Here's your list:\n"
print_list(list)
