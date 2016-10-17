Creating a Rails App
with Jay McGavren

Let's create a new Rails app, and then test it out.

Type "rails new", followed by the name of the app you want to create. To run a server, change into the new app's directory, then type "bin/rails server", or on Windows, type "ruby bin\rails server".

rails new app name
cd app name
bin/rails server
Rails will begin logging messages to your terminal. You should see a URL like "http://localhost:3000"; this is the address where the server is running. Paste that URL into your browser to view your app's welcome page.

To stop the server later, return to your terminal window and press Ctrl-C.

An important detail for Windows users: Anywhere in the upcoming courses that you see me type bin/rails, or bin/ followed by any other command, you need to change the command a little bit so that it works on your system. Just replace the bin/ with ruby bin\. You need to do this because, unlike Macs and Linux machines, Windows can't run Ruby scripts directly by default; they have to be run through the "ruby" command.

Our First Resource 6:38
with Jay McGavren
That welcome page is cool, but it's time to create some pages that are specific to your app. And we're going to do it using JUST TWO terminal commands. You're about to witness the power of convention over configuration.

A "resource" is a thing that you want users to be able to perform "CRUD" operations on: to create instances of it, read data for it, update data for it, and delete it when they don't want it any more.

A Rails "scaffold" creates a model, view, and controller for a resource, all at once.

In your terminal:

bin/rails generate scaffold ModelName attribute1:type attribute2:type ...

"rails" runs the Rails command
"generate" is the Rails subcommand we want to run. We ran the "server" subcommand before, and there are various other subcommands to do various other tasks. The "generate" subcommand will generate some source code files for us.
"scaffold" is the type of code we want to generate. We'll look at other things we can generate later.
"ModelName" is the model we want to create a scaffold for.
Then, we add one or more attributes that we want our model objects to have. These are bits of data that describe the object.

Among the files created will be one with a name like "db/migrate/[date]_create_model_name.rb". This is a "migration file". It's responsible for creating the database table, which will store data for your objects.

If you ever get a "ActiveRecord::PendingMigrationError", in the terminal, type "bin/rails db:migrate". Your migration files will be run, and will set the database up for you.

To see new resources you've created a scaffold for, go to your browser's address bar and add "/model_name" at the end of the URL.

The Browser's Request1:50
with Jay McGavren
We've set up our posts resource, and we're able to view posts in our browser. But what's actually happening when you load that URL?

Here's an overview of how Rails handles a request.

Rails looks at the request, to figure out which code should handle it.
The request gets routed to an action method on a "controller".
The controller loads the resource in from database using a "model class".
The controller renders a "view" using the model data, to generate the response content.
To retrieve the URL "http://localhost:3000/posts", your browser sends an HTTP "GET" request.

Your browser uses a communication standard called HyperText Transfer Protocol, or HTTP, to talk to web servers. That's the "http:" at the start of the URL.
"localhost:3000" is the host and port.
"/posts" is the path to the resource you want.
When you press Enter to load the URL, your browser sends an HTTP GET request - it gets the page. (There are other HTTP request types like POST and DELETE, too. We'll look at those later.) If you'd like to learn more about the HTTP protocol, check out the HTTP Basics course.

If we switch to the terminal and look in the log, we can see where Rails received the request, and how it was handled.

Started GET "/posts" for ::1 at 2016-05-28 12:37:31 -0700
Processing by PostsController#index as HTML
  Rendering posts/index.html.erb within layouts/application
  Post Load (0.1ms)  SELECT "posts".* FROM "posts"
  Rendered posts/index.html.erb within layouts/application (1.6ms)
Completed 200 OK in 23ms (Views: 20.2ms | ActiveRecord: 0.1ms)
This log shows where Rails recieved the request, passed it to a controller, loaded some model data, and rendered a view.

ERB stands for Embedded Ruby

Launching Rails console
with Jay McGavren
We've seen how to use the Web interface to create new model objects. Now, I want to show you how to do the same from the terminal, using the "Rails console".

To launch the Rails console, type in your terminal:

bin/rails console

You'll leave your system prompt, and be taken to a prompt provided by Ruby. Here you can type Ruby expressions. They'll be evaluated, and you'll be shown the result.

Rails Console: Updating Model Objects 1:22
with Jay McGavren
Next let's look at "update" operations in the console.

After retrieving a model object from the database, we can modify its data and update the database record. This is much the same as working with a new model object; we just assign new values to the existing object's attributes, and call "save" on it.

Let's suppose we wanted to update a posts's title:

As before, we can get a collection of all the Post objects by calling Post.all.
We can look at the "id" attribute of the one we want to update, and then retrieve it by passing the ID to the "find" method. We'll assign the object we get back to a variable: post = Post.find(7)
As before, we can set the attributes the same way we would on any other Ruby object. So let's change the title: post.title = "I've been updated!"
Once again, these changes only exist in your computer's memory, not in the database. We need to call the "save" method on the object to save it to the database: post.save

Exit the IRB console

irb > exit

Updating the Model 3:47
with Jay McGavren

Our app is able to store titles for our posts, but we forgot to add a post body to hold the actual post content. In this stage, we're going to fix that.

Any time we want to update a Rails database, we need to use a migration. And to create that, we'll need the "rails generate" command:

$ rails generate migration AddBodyToPosts body:text

The migration to create the "posts" table was set up as part of the scaffold we used earlier. This time, we'll need to create the migration separately. So instead of the "scaffold" generator, we're going to run the "migration" generator.
Next is the migration name. It should be in CamelCase (with each word capitalized), since it will be used as a class name.
We can name the migration whatever we want, but if it's in the form Add<attribute name>To<table name>, the generator will set up a command to add a column to that table for us. So we name it "AddBodyToPosts".
Next we can specify one or more columns we want to add, just like we did when generating the scaffold before.
Here we specify "body:text" to create a "body" attribute of type "text".
Previously, for the title, we used a type of "string". But the post body needs to be longer, so we use a type of "text" here, so that the resulting database column can hold more text.
Don't forget, generating the migration doesn't actually update the database. To do that, run:

  $ bin/rails db:migrate.

Frequently Asked Questions

Q: In the console, I loaded a Post with Post.first, but when I type post.body = "some value" I get undefined local variable or method 'post'! What's going on?

A: Calling the Post.first method doesn't automatically assign it to a variable; the post variable doesn't exist until you assign a value to it. Be sure to assign the return value of Post.first to a variable with post = Post.first.

Updating Views4:58
with Jay McGavren
Our "Post" model objects have a "body" attribute now, but that attribute doesn't show up on our site anywhere. In order to fix this, we're going to need to update the affected views to display the "body" attribute.
Teacher's Notes
Questions?1
Video Transcript
Downloads
Let's open "app/views/posts/index.html.erb" in our editor. This template is creating an HTML table of all the posts and their attributes. If you want to learn more about HTML tables, see the HTML Tables course.

...
<table>
  <thead>
    <tr>
      <th>Title</th>
      <th>Body</th> <!--Add header here-->
      <th colspan="3"></th>
    </tr>
  </thead>

  <tbody>
    <!-- Process each post -->
    <% @posts.each do |post| %>
      <tr>
        <!-- The current post's title -->
        <td><%= post.title %></td>
        <!-- Add body attribute here -->
        <td><%= post.body %></td>
        <td><%= link_to 'Show', post %></td>
...
If we save our work and reload the page, we'll see a body for the post that we edited in the Rails console. We'll see blank bodies for the other posts (since they're still blank in the database).

Now, let's add the body attribute in the view for a single post. Edit the "app/views/posts/show.html.erb" file.

...
<!-- Existing post title code here -->
<p>
  <strong>Title:</strong>
  <%= @post.title %>
</p>

<!-- Add a new HTML paragraph tag... -->
<p>
  <!-- With the post body embedded inside. -->
  <%= @post.body %>
</p>
...
When we edit an existing post, or create a new post, we're not given a field to edit the body attribute. We want to fix that next. But when we edit the ERB template at "app/views/posts/edit.html.erb", we don't see HTML to render a form directly. The same is true for "app/views/posts/new.html.erb". Instead, we see a call to the "render" method with an argument of "form".

<%= render 'form', post: @post %>
When "render" is called from either of these templates, it looks up a "partial". "Partial" is short for "partial view". And it's this partial that contains the HTML code for the form.

You can take the HTML code that's identical between two templates, and move it to a partial view. Then, each template that needs that code can render the partial, and the partial's code will be included in the template's code. When you need to make a change, you only have to update the partial. Any changes you make will immediately be visible in all the views that use that partial.

So both the edit post page and the new post page include a call to render a partial called "form". If we look at the log, we'll see it's been showing us the step where it renders the partial all along. Within both the "edit" and "new" requests, we'll see "Rendered posts/_form.html.erb".

The underscore at the start of the file name indicates that a file holds a partial template.
When calling "render", you can leave the underscore and the ".html.erb" extension off. Rails can add those automatically. That leaves just "render 'form'".
Following the name of the partial is a hash that sets up local variables for use within the partial. So this will make the @post instance variable available within the partial as the "post" local variable.
Let's open the partial file to see what it contains. It's at "app/views/posts/_form.html.erb".

<%= form_for(post) do |f| %>
  <!-- Trimming error display code -->
  <!-- Existing title field -->
  <div class="field">
    <%= f.label :title %>
    <%= f.text_field :title %>
  </div>

  <!-- Create a new div element to hold body -->
  <div class="field">
    <!-- The label that appears next to field -->
    <%= f.label :body %>
    <!-- The field itself -->
    <!-- Using text_area instead of text_field
    <!-- makes it bigger -->
    <%= f.text_area :body %>
  </div>

  <div class="actions">
    <%= f.submit %>
  </div>
<% end %>
We can see that it takes the "post" object we passed in, and renders an HTML form for it.
The "f" variable here will hold a Ruby object representing the HTML form. We can call methods on that object to add elements to the HTML form.

Updating Partials 3:31

"Partial" is short for "partial view". And it's a partial that contains the HTML code for the form.
