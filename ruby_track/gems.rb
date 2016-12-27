What Are Ruby Gems?

with Jason Seifer
In Ruby, a gem is a library that contains a specific piece of functionality as well as any files or assets related to that functionality. Gems can be found for all sorts of common functionality in an application -- things like handling money and currency, integrating with credit card processing, tools to make ruby coding even easier, and more. You could write these things yourself but one big benefit to using a gem instead is that it saves time.

Ruby Gems : Find, Install, and Publish RubyGems
https://rubygems.org/

https://www.ruby-toolbox.com/

Gem Installation 3:14
with Jason Seifer
Once you know what gem you want to use, you need to install it. We'll do that using the gem command.

Install a gem:

$ gem install [gem name]
Install a gem from a downloaded package:

$ gem install [package name.gem]

$ gem install money -v 6.6.0
$ gem uninstall money -v 6.6.0

$ gem update rake

$ gem list
$ gem help
$ gem help commands
$ gem environment
$ gem contents [gem name]

Code Samples

Once a gem is installed, it is used by calling the require statement followed by the name of the gem. If we were using the money gem, it would look like this:

1 require 'money'

money = Money.new(1000, "USD")

puts money.inspect

Load Path:
$irb
$LOAD_PATH
