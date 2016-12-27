Installing Rails on Windows7:44
with Jay McGavren
Today, we're going to be setting up a Ruby on Rails development environment on Windows.

First, we need an installation of the Ruby programming language. We're going to use a precompiled version of Ruby called Ruby Installer.

Download and run Ruby Installer from rubyinstaller.org. (For convenience, we linked direct to the version you need. The rubyinstaller.org site hosts its files on bintray.com.)
Allow the download to finish, then go to your Downloads folder, and open the "rubyinstaller" program. An installation wizard will open. Check "Add Ruby executables to your PATH", then click Install. Wait while the installer runs, and click Finish when done.
To access Ruby, go to the Windows menu, click All Programs, scroll down to Ruby, and click "Start Command Prompt with Ruby". A command prompt terminal will open. If you type ruby -v and press Enter, you should see the Ruby version number that you installed.
Ruby Development Kit

Download the Ruby Development Kit. (This download also originates from rubyinstaller.org, and is also hosted on bintray.com.)
When it's done, go to your downloads folder and double-click the DevKit executable.
We need to specify a folder where we're going to permanently install the DevKit. I recommend installing it in the root of your hard drive, at "C:\RubyDevKit". (Don't use spaces in the directory name.)
Now we need to make the DevKit tools available to Ruby.

Back in your command prompt, change to the the DevKit directory. ("Directory" is another name for a folder.) Type "cd C:\RubyDevKit", or whatever other directory name you installed it in.
Next we need to run a Ruby script to initialize the DevKit setup. Type "ruby dk.rb init".
Now we'll tell that same script to add the DevKit to our Ruby installation. Type "ruby dk.rb install".
Rails

Now it's time to install Rails. Rails comes as a Ruby "gem". A gem is a library, a collection of reusable code, that can be automatically downloaded and installed on your system, using the "gem" tool. In your command prompt, type:

gem install rails --version 5.0.0
Once you press Enter, the "gem" program will download and install that version of the Rails gem, along with all the other gems Rails depends on.

Node.js

One last thing... Some libraries that Rails depends on require a JavaScript runtime to be installed. Let's install Node.js so that those libraries work properly.

Download the Node.js installer.
When the download completes, visit your downloads folder, and run the "node-v4.4.7-x86.msi" installer.
Read the full license agreement, accept the terms, and click Next through the rest of the wizard, leaving everything at the default.
A window may pop up asking if you want to allow the app to make changes to your computer. Click "Yes".
When the installation is complete, you'll need to restart your computer so Rails can access Node.js.
Once your computer restarts, don't forget to go to the Windows menu, click All Programs, scroll down to Ruby, and click "Start Command Prompt with Ruby".
