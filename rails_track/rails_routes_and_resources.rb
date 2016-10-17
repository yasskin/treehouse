It is time to take the training wheels off! In our Rails Basics course, we created a simple blog app. And we saw how to set up the model, view, and controller for our Post resource automatically, using a scaffold. But we also learned that scaffolds do not offer you much control over how your finished resource looks. So in this course, we are going to create a resource completely from scratch. we are also going to introduce a concept we have not looked at thus far: Rails "routes". Routes are how Rails sends a particular request to the particular controller that can handle it.

To set up a route to the index of all Page objects, we add a line like this in config/routes.rb:

$ get '/pages', to: 'pages#index'`

In plain English, you could read this as "GET requests for the '/pages' path should go to the PagesControllers 'index' method".

The result is a route like this:

$ bin/rails routes
   Prefix Verb   URI Pattern               Controller#Action
    pages GET    /pages(.:format)          pages#index
You can read more about GET routes in the official Rails documentation.
http://guides.rubyonrails.org/routing.html#connecting-urls-to-code

Controller Generator

$ bin/rails generate controller [name plural]

$ bin/rails generate controller Pages

for a mistake:
$ bin/rails destroy controller Pages

We want our /pages path to show a list of blog pages. But right now, our view template is just showing a static header. So lets set our controller up to load some Page data so that we can include it in our template.

To run the model generator from your terminal:

$ bin/rails generate model ModelName attr1:type attr2:type

...Where ModelName is the name of the model class to create (like Post), attr1, attr2, etc. are the names of attributes (like title or body), and each type entry is the type of the attribute (like string or integer).

Have questions about this video? Start a discussion with the community and Treehouse staff.

Get Help

with Jay McGavren
We have set up our controllers "index" method to load all "Page" objects into the "@pages" instance variable. We have also created some "Page" records for it to load. That was only part of the problem, though; we still do not see any page data. That is because we have not set up the our view template to display the pages we have loaded. To do that, we are going to use ERB to embed some Ruby code into our HTML.

Most text in an ERB template is copied to the output verbatim.

<p>I will appear in the output exactly as I do here.</p>
But Ruby code within ERB tags gets evaluated instead of being copied directly to the output.

Code within output ERB tags (<%= %>) is evaluated, and the result is embedded into the output. This code will output the current time:

<p>The current time is: <%= Time.now %></p>

Code within regular ERB tags (<% %>, without an equals sign) is also evaluated, but is not included directly in the output. It can be used to influence the result of output tags.

If you place a conditional within regular tags, text within the conditional will only be output if the condition is true. This code will include You passed! in the output:

<% grade = 97 %>
<% if grade > 60 %>
  You passed!
<% end %>
This code will not:

<% grade = 54 %>
<% if grade > 60 %>
  You passed!
<% end %>

If you place a loop in regular ERB tags, text within the loop will be output repeatedly. This code will output 4 <p> elements with the text 0 fish, 1 fish, 2 fish, and 3 fish:

<% 4.times do |index| %>
  <p><%= index %> fish</p>
<% end %>

Assuming @pages contains a collection of Page objects, this code will output the title of each Page:

<% @pages.each do |page| %>
  <p>
    <%= page.title %>
  </p>
<% end %>

Want to learn about looping over the values in a collection with each? Check out our Ruby Loops course.

Linking to Pages 3:56
with Jay McGavren

Users can view a list of all our page titles, but they can not view the content of single Pages yet. For our Posts resource, they can click a link on the list of all Posts to view an individual post. let us set up links to view single
The link_to method returns a string with the HTML for a link.

<%= link_to("link text", "/link/path") %>

More documentation is here.

let us say we need to set up links to view individual Page objects. In the URL path, following /pages/, we need a string representing the ID of the Page object we want to load. We will set up the route like this:

get '/pages/:id', to: 'pages#show'

The colon followed by a name is a URL parameter. A URL parameter captures part of the request path, and makes it available within the controller in the params hash. So if we type :id here, it will be available later as params[:id]. We can name the parameter whatever we want, but by convention the name :id is used for model record IDs.

ROUTES FOR NEW PAGES

Our users can view a list of all Pages. They can click a link to view an individual Page. What they CAN NOT do right now is create new pages; we had to go into the Rails console to do that. Our next task is to set up a form so that it is easy for our USERS to create Pages, too.

HTTP GET requests are intended for getting data from the server. HTML forms are just another type of data. So when a user wants to create a new Page, the browser should send an HTTP GET request to retrieve a blank HTML form.

When you are adding new data, though, you are supposed to use an HTTP POST request instead. So, when you click the submit button on an HTML form, that is what your browser sends to the server: a POST request with the form contents.

For this reason, setting up a form to add new instances of a resource usually requires two routes in your routes.rb file.

Suppose we were setting up a form for new Page records. We would first need a route to GET the HTML form:

get '/pages/new', to: 'pages#new'

Then we would need a second route to accept the POST request when the form is submitted:

post '/pages', to: 'pages#create'

Controller Action for New Pages 1:48
with Jay McGavren
we are trying to set up an HTML form for new Page objects. We have defined a route for the /pages/new path that directs to the new method on PagesController. Now we just need to define that method.

View for New Pages 5:42
with Jay McGavren

We have the /pages/new path routed to the PagesControllers new method. In that method, we have set up a new Page object in the @page instance variable. Now, we need to set up an ERB view template that creates a form based on that Page object.

The form_for method takes a model object, and generates an HTML form for it.

# This will embed the form HTML in the output.
# Here, a form will be generated for the object
# in @page.

<%= form_for(@page) do |f| %>
  <div class="field">
    # This will output a label for the "title" field.
    <%= f.label :title %>
    # This will output a text field used to set the
    # title attribute of the Page object.
    <%= f.text_field :title %>
  </div>

  <div class="field">
    # This will output a label for the "body" field.
    <%= f.label :body %>
    # This will output a larger text field used to set the
    # body attribute of the Page object.
    <%= f.text_area :body %>
  </div>

  <div>
    # Outputs a button used to submit the form.
    <%= f.submit %>
  </div>
<% end %>

You can read more about form_for in the official Rails documentation.

Want to learn more about HTML forms? Check out our course on the topic.

Controller Action to Create Pages 11:27

We have set up a route so that form submissions get sent to the PagesControllers create method. But that method does not exist yet. let us set it up now. Within the create method, we are going to need to specify which parameters are safe to use to create the new Page object.

Suppose you have a parameters object with a bunch of parameters you do not want. All the parameters you do want are nested under the page parameter:

2.3.0 :007 >   params
=> <ActionController::Parameters {"stuff"=>"%$\#@", "page"=>{"title"=>"title", "body"=>"body", "slug"=>"slug", "is_admin"=>"true"}} permitted: false>

Before we can use these parameters to create a model object, we are going to need to indicate which parameters are required to be present, so that requests without them can be rejected. We will also need to indicate which parameters are permitted, so that other, possibly malicious parameters can be discarded.

The require method indicates a parameter that is required. So, we will call require with the symbol :page.

2.3.0 :008 > params.require(:page)
=> <ActionController::Parameters {"title"=>"title", "body"=>"body", "slug"=>"slug", "is_admin"=>"true"} permitted: false>

The require method returns the value of the parameter being required, which in this case is another ActionController::Parameters object.

The permit method takes the names of one or more parameters that are permitted. Let us try calling permit on this parameters object, to indicate which parameters are permitted (and to discard that unwanted is_admin parameter). We will chain the methods together, calling permit directly on the return value of require.

2.3.0 :009 > params.require(:page).permit(:title)
=> <ActionController::Parameters {"title"=>"title"} permitted: true>

We got back a new parameters object. It contains only the title parameter, since that was the only one we permitted. And notice that the permitted attribute of the object is true this time. That means we can use it to create a new model object.

let us try that out. We will take the same command, and pass the result to a call to Page.new...

2.3.0 :010 > Page.new(params.require(:page).permit(:title))
=> #<Page id: nil, title: "title", body: nil, slug: nil, created_at: nil, updated_at: nil>
Instead of an error, we get a new Page object back. And because we permitted the title parameter, the Page objects title attribute is set.

An Edit Route 6:24

Now our users can create a new Page. But they had better get it right the first time, because right now they can not go back and change what they have entered... Maybe we should fix that. Let us give them a form to allow them to update existing Pages.

When a user wants to create a new model object, the browser sends an HTTP GET request to retrieve a blank form. When they submit the new form, the browser sends an HTTP POST request to create a new record on the server.

And when a user wants to edit an existing model object, the browser needs to send an HTTP GET request to retrieve that form as well. The difference is that the edit form will be pre-populated with the existing objects data.

Another difference is that when you are modifying existing data on the server (rather than adding new data), you are supposed to use a PUT or PATCH request rather than a POST request. So when you click the submit button on the edit form, that is what your browser sends to the server: a PATCH request.

An Update Action5:52

We have successfully created a form for editing an existing Page, and populated it with the Page attributes. But if we submit the form, we see that a so-called HTTP PATCH request is being sent by the browser, and there is no route for that type of request. So to process these requests, we will need to go into routes.rb add a PATCH route.

A controller action to update an existing model object usually performs these operations:

  def update
    # Look up the existing model record based
    # on an ID from the request path.
    @page = Page.find(params[:id])
    # Filter the form parameters to ensure no
    # malicious parameters were added.
    page_params = params.require(:page).permit(:title, :body, :slug)
    # Use the filtered parameters to update
    # the existing model record.
    @page.update(page_parameters)
    # Redirect the browser to another location
    # so that it does not just sit there displaying
    # the submitted form.
    redirect_to @page
  end

Deleting Pages 5:30

Our users can create Pages, read Pages, update Pages... what is left? Oh, right, deleting Pages! For every resource you create, there may come a time when you do not want it any more. So, let us allow our users to delete Pages.

Deleting model records usually first requires providing a link that sends a DELETE request:

<%= link_to 'Delete', @page, method: :delete %>

You will also need a route that sends the DELETE requests to the appropriate controller action:

delete '/pages/:id', to: 'pages#destroy'

The controller action usually performs the following operations:

  def destroy
    # Look up the model record to destroy
    # based on the ID from the request path.
    @page = Page.find(params[:id])
    # Delete the matching record.
    @page.destroy
    # Redirect the browser to another
    # appropriate page.
    redirect_to pages_path
  end
