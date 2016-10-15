Ruby Branching and Looping / Practice: Methods Using Loops

class String
  define_method(:tripple_each_letter) do
    new_string = new_string.+
    self.each() do |string|

      new_string = new_string.concat

class Range
  define_method(:product) do
    total = 1
    self.each() do |number|
      total = total.*(number)
    end
    total
  end
end

class Array
  define_method(:upcase) do
    new_array = []
    self.each() do |string|
      upcased_string = string.upcase!()
      new_array.push(upcased_string)
    end
    new_array
  end
end

class Range
  define_method(:sum) do
    total = 0
    self.each() do |number|
      total = total.+(number)
    end
    total
  end
end

names = []
5.times()do
  names.push("michael")
end

total = 0
5.times() do |time|
  total = total.+(time)
end

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
4.times() do
  numbers.pop()
end

total = 1
7.times() do |add_itself|
  total = total.+(add_itself)
end

//Each Loops

my_fave_drink = "Coke"
my_new_drink = []
my_fave_drink = my_fave_drink.split(//)
my_fave_drink.each() do |drink|
  my_new_drink = my_fave_drink.push(drink)
  my_new_drink = my_fave_drink.push(drink)
  my_new_drink = my_fave_drink.push(drink)
end
my_new_drink = my_fave_drink.join()


//Take a range of numbers and multiply them together.
numbers = (1..5)
product = 1
numbers.each() do |number|
    product = product.*(number)
  end
product

friends = ["Terry", "David", "Ben"]
friends.each() do |friend|
  friend.concat(" is my friend.")
end

numbers = [1, 2, 3, 4]
new_numbers = []
  numbers.each() do |number|
    new_number = number.+(1)
    new_numbers.push(new_number)
  end
new_numbers

friends = ["Liz", "Sal", "Jo"]
friends.each() do |friend|
  friend.concat(" loves programming!")
end
friends

friends = ["liz", "michael", "dustin", "sally", "jo"]
  friends.each() do |friend|
    name.upcase!()
end

numbers = (1..10)
new_numbers = []

numbers.each() do |number|
  new_number = number.+(1)
  new_numbers.push(new_number)
end
