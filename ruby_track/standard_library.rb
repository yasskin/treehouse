The Ruby Standard Library5:11
with Jason Seifer
The Ruby Standard Library contains larger pieces of functionality and must be specifically imported in to your programs.

Some examples of standard library are utility classes for working with dates and times, serialization, network access and more.

http://ruby-doc.org/stdlib-2.2.2/

$ irb
=> require "csv"

CGI library

Ruby Date Documentation
Date Formatting Strings

Date (Year, Month, Day):
  %Y - Year with century if provided, will pad result at least 4 digits.
          -0001, 0000, 1995, 2009, 14292, etc.
  %C - year / 100 (rounded down such as 20 in 2009)
  %y - year % 100 (00..99)

  %m - Month of the year, zero-padded (01..12)
          %_m  blank-padded ( 1..12)
          %-m  no-padded (1..12)
  %B - The full month name (``January'')
          %^B  uppercased (``JANUARY'')
  %b - The abbreviated month name (``Jan'')
          %^b  uppercased (``JAN'')
  %h - Equivalent to %b

  %d - Day of the month, zero-padded (01..31)
          %-d  no-padded (1..31)
  %e - Day of the month, blank-padded ( 1..31)

  %j - Day of the year (001..366)
Code Samples

Instantiate a new date object:

Date.new
Date.new(2015, 3, 1)
Parsing dates from strings:

Date.parse("March 1st, 2015")
Date.parse("It's 2015, everyone!")
We can also pass in our own format string to the strptime method:

Date.strptime("It's 2015, everyone!", "It's %Y, everyone!")
Dates can be manipulated with mathematical operators:

Date.today
Date.today + 1
Date.today - 1
Date.today << 1 (subtract month)
Date.today >> 1 (add month)
Format strings can be passed as well:

Date.today.strftime("%Y %m, %d")
Date.today.strftime("%m %d, %Y")

The Ruby Time Class
with Jason Seifer
The DateTime and Time classes add an additional component compared to the date class -- the concept of a time of day. The Date class allows us to work with individual dates but has no concept of a time of day. If we want to get specific about the time of day, we have to use the DateTime or Time classes. Let's go ahead and see how that works now using Workspaces.

Time documentation
http://ruby-doc.org/core-2.2.2/Time.html
Code Samples

Now let's take a look at the DateTime and Time classes. When we're representing dates and times and need a time of day component, these are the classes we would use.

There is little difference between the date and time classes these days. In older versions of Ruby, there was an internal difference in how they were represented and Time instances could only go up to the year 2038 but these days the differences are not as big. Just pick one class and use use. We're going to work with the Time class in this video.

Instantiate now:

Time.new
Time.new(2011)
Time.new(2014, 2, 1)

time = Time.new
time.hour
time.min
time.sec
time.monday?
time.month
time.day
Addition and subtraction is seconds:

time + 1  is 1 second
time + (60) for 1 minute
time + (60 * 60) for 1 hour
We can also see if one time is before or after another

time < Time.now
Time.now > time
We can format using strftime

time.strftime("%m %d %Y %I:%M %p")

When we've been working with dates and times so far, we haven't been worrying about time zones. Different parts of the world use something called an offset when taking time in to account. You probably have friends or relatives in a different timezone and may need to mentally subtract or add hours so you call them at a reasonable time of day. The same thing happens in Ruby when working with time zones.

http://ruby-doc.org/core-2.2.2/Time.html
https://en.wikipedia.org/wiki/List_of_UTC_time_offsets

time1.dup
time1.dup.utc
