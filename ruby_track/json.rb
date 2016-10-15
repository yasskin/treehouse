JSON
with Jason Seifer
You may have heard of JSON before. No, I'm not talking about my name, I'm talking about the serialization format. JSON stands for JavaScript Object Notation and is a way of serializing data so you can access it later. Why are we talking about this in Ruby when it's JavaScript? I'm glad you asked! JSON is a plain text serialization format which means you don't really need any special software to read and write it -- you only need to be prepared for the different formats of objects inside it. JSON may have started with JavaScript but is in wide use now and it's pretty much standard that every programming language can read and write JSON.

http://ruby-doc.org/stdlib-2.2.2/libdoc/json/rdoc/JSON.html

JavaScript Object Notation (JSON)¶ ↑

JSON is a lightweight data-interchange format. It is easy for us humans to read and write. Plus, equally simple for machines to generate or parse. JSON is completely language agnostic, making it the ideal interchange format.

require 'json'

YAML
with Jason Seifer
While we're talking about serialization formats, we can't forget about YAML. Yaml stands for Yet Ain't Markup Language and is a common serialization format in use today by many Ruby projects. YAML is also a plain text format and you can find parsers for it in many languages besides Ruby. Let's take a look at working with YAML now using Workspaces.

http://ruby-doc.org/stdlib-2.2.2/libdoc/yaml/rdoc/YAML.html

Base643:08
with Jason Seifer
From time to time in your programming career, you'll need to deal with binary encoding. One of the many ways to encode binary data to text is using the base 64 encoding scheme. A binary encoding scheme will represent binary data in a text format. We mainly use this when sending binary data across a medium which expects text data, like when requesting web sites across a network. There are severan encoding formats available for this and, programmatically, many function the same way.

http://ruby-doc.org/stdlib-2.2.2/libdoc/base64/rdoc/Base64.html

Logger
with Jason Seifer
As we've been going along coding programs so far, when we need to know the value of a variable or debug some piece of data, we've generally been using print or puts statements of some sort. This works just fine for smaller programs. However, as you start to write larger programs, it can be cumbersome and sometimes ineffective to stop the program and print things to the screen. In cases like this, we can use something called log to write data to a stream. The stream can be a file, standard output, the network, and more. We can write things like the current state of our classes and objects, errors, and more. The Ruby standard library comes with logging functionality in the form of the Logger class from the Standard Library

http://ruby-doc.org/stdlib-2.2.2/libdoc/logger/rdoc/Logger.html
