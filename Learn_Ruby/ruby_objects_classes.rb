Think of a class as a blueprint

name = String.new("Jason")

.new initializes a new instance of the String class.
objects are instantiated by using the class name a dot and the keyword new
the instance is called an object,

Ruby is an object oriented programming language b/c everything is an object


class Name
  attr_reader :title, :first_name, :middle_name, :last_name

  def initialize(title, first_name, middle_name, last_name)
    @title = title
    @first_name = first_name
    @midde_name = middle_name
    @last_name = last_name
  end
end
name = Name.new
puts name.title + " " +
 name.first_name + " " +
 name.middle_name + " " +
 name.last_name
