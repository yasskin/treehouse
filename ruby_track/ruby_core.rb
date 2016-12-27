Ruby Core
http://ruby-doc.org/core-2.2.2/

In Ruby, a Struct is a shortcut to creating a class with accessor methods. You could create these yourself using simple classes but structs save you a bit of time.

Code Samples

Here is our struct:

Customer = Struct.new(:name, :email) do
  def name_with_email
    "#{name} <#{email}>"
  end
end
We can then create a new instance and iterate through the attributes:

customer = Customer.new("Jason", "jason@teamtreehouse.com")
customer.each_pair do |name, value|
  puts "#{name} - #{value}"
end

The Object and Kernel classes are the root of all Ruby class and object functionality. Object is the base class that all Ruby classes inherit from. The Kernel module is included by the Object class and contains methods that can be used in all classes.
http://ruby-doc.org/core-2.2.2/Kernel.html
http://ruby-doc.org/core-2.2.2/Object.html



The File class handles file input and output in Ruby. When working with files in a programming language, there are different things you need to tell the computer to do in order to assure that files are correctly handled on the disk. There are different modes that files can be opened as well: reading, writing, and different combinations of both of those.

File documentation
http://ruby-doc.org/core-2.2.2/File.html

IO documentation
http://ruby-doc.org/core-2.2.2/IO.html

  Code Samples

  In this example, we open and write to a file:

  File.open("example.txt", "w") do |file|
    print "Enter your name: "
    name = gets.chomp
    file.puts "Name: #{name}"
    print "Enter your email: "
    email = gets.chomp
    file.puts "Email: #{email}"
  end

  The Marshal class in Ruby Core allows you to convert Ruby objects in to a data stream and back again.


  Links

  Marshal documentation
  http://ruby-doc.org/core-2.2.2/Marshal.html

  Code Samples

  Here is our player class with two attributes: name and progress:

  class Player
    attr_accessor :name, :progress

    def initialize(name)
      @name = name
    end
  end

  Using the Marshal library, we can output this player object to a string:

  player = Player.new("Jason")
  player.progress = 60

  player_out = Marshal.dump(player)

  puts player_out.inspect
  Results in the following:

  "\x04\bo:\vPlayer\a:\n@nameI\"\nJason\x06:\x06ET:\x0E@progressiA"
  We can then load it later and the object will have the same data:

  player_in = Marshal.load(player_out)

  puts player_in.inspect
