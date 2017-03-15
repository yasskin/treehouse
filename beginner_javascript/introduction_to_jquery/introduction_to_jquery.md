# Introduction to jQuery
* 92-minute JavaScript Course
## with Aisha Blake

## Start Course

## About this Course

Learn to create websites using jQuery, the world’s most widely-used JavaScript library. jQuery allows us to “write less, do more” by providing a set of functions that make selecting parts of a webpage and dealing with inconsistencies across different web browsers much faster and easier. No matter your skill level as a JavaScript developer, jQuery is an important tool to have in your toolbox!
What you'll learn

* Setting Up jQuery
* jQuery Objects
* Attributes
* Events
* DOM Manipulation
* Hello, jQuery!

## Hello! In this stage, you’ll learn how jQuery makes working with the Document Object Model faster and simpler. You’ll learn when and how to include jQuery in your projects and start to get familiar with its syntax.

## Events

The sites we make with jQuery are largely event-driven. The behavior that we define is based on events that happen in the browser, usually triggered by something the user does. In this stage, we’ll learn how to write code that responds to these events.

## DOM Manipulation

A great deal of what we do in jQuery involves manipulating the Document Object Model. We’ll change the content inside our HTML elements, use form values to change styling, as well as show, hide, and move elements.

## DOM Traversal

Awesome, you’ve built an engaging, interactive site with jQuery! We’ve got just a little bit more to go before we’re finished. You’ll find that it can be simpler and cleaner to make an initial selection in jQuery, then move through the DOM from that starting point. jQuery provides methods specifically for DOM traversal. Let’s take a look at a few of them!

## Why jQuery? 4:52

In this video, we’ll begin at the beginning by taking a look at the problems jQuery solves for us. We’ll also introduce the example project we’ll be working with throughout the course.

Website examples:

nodejs.org
https://nodejs.org/en/
git-scm.com
https://git-scm.com/

Further Reading:
jQuery documentation
http://api.jquery.com/
jQuery in Action by Bear Bibeault, Yehuda Katz, and Aurelio De Rosa
https://www.manning.com/books/jquery-in-action-third-edition

jQuery Download
http://jquery.com/download/
jQuery CDN
http://code.jquery.com/

## The jQuery Object 2:23

In order to perform actions on elements on the page, they have to be contained in a jQuery object.

jQuery’s noConflict() method
https://api.jquery.com/jquery.noconflict/
Avoiding Conflicts with Other Libraries
https://learn.jquery.com/using-jquery-core/avoid-conflicts-other-libraries/

jQuery("button")

$ === jQuery

.delay().fadeOut(400)

## Selecting Page Elements with jQuery 3:10

jQuery uses the same CSS Selectors you might use to style your personal website.

CSS Selectors
Attribute Selectors
https://developer.mozilla.org/en-US/docs/Web/CSS/Attribute_selectors

Classes and IDs sample
```
$('.blog-post');  
$('#about');  
```
Attribute Selectors sample
```
$("[name='newsletter']");
```
 // Element Selectors//
    //  $("li");
    //  $("a");
    //  $("img");
    //  $("p");

// Descendant Selectors
    // $("p a")

// Classes and IDs
    // $(".blog-post");
    // $("#about");

// Attribute Selectors
    // $([name="newsletter"]);

## Filtering Matched Elements 1:38

Filters can further narrow a set of matched elements and are based on Position, Hierarchy, Form State, and Content.

jQuery API
http://api.jquery.com/
jQuery filtering methods
https://api.jquery.com/category/traversing/filtering/

.first(selector)
.has(selector)
.not(selector)
.css()

## Accessing and Modifying Attributes 5:06

We have talked about using attributes to create selectors in jQuery, but there’s a lot more we can do with these bits of information about our elements. jQuery has some built-in methods to help us do just that.

jQuery’s attr() method

Course Code
```
console.log($('a').attr('href'));
```
```
$('button').on('click',function() {

}))
```
```  
$('a').attr('href', 'https://github.com/');
});
```
```
$('a').not('[href*="my-domain.com"]').attr("target", "_blank");
```

## Intro to Events 2:45

In jQuery, we will often be dealing with events that result from some action on the part of the user. It might be things that happen in the browser like a timer running out, or external data being loaded.

jQuery’s click() method
http://api.jquery.com/click/

Further Reading
jQuery event methods
http://api.jquery.com/category/events/
MDN’s Event reference
https://developer.mozilla.org/en-US/docs/Web/Events

Events > Mouse Events

.click(handler)

Callback Functions 2:17

You may be familiar with the concept of callback functions if you’ve already learned some JavaScript. An easy way to think about this is to first understand that a callback is a function that gets passed to another function as an argument.

forEach() method
https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/forEach
setInterval() method
https://developer.mozilla.org/en-US/docs/Web/API/WindowOrWorkerGlobalScope/setInterval

Further Reading
Understand JavaScript Callback Functions and Use Them
http://javascriptissexy.com/understand-javascript-callback-functions-and-use-them/
Functions (MDN)
https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions

function()
data type: object
they have functions and methods

## Using the on() Method 4:53

There are several ways to define event handlers in JavaScript, but this is the currently accepted method when using jQuery. This method can be used to attach a handler for any event to a set of matched elements. The event type gets passed in as the first argument and a callback function describing what should happen when that event is triggered is passed as the second.

The Event Object
http://www.htmlgoodies.com/beyond/javascript/events-and-javascript-part-3-the-event-object.html

## Event Types 3:47

This video will review the most common of the many existing event types.

Scroll method
https://api.jquery.com/scroll/
Change method
https://api.jquery.com/change/

Further Reading
The this keyword
https://teamtreehouse.com/library/understanding-this-in-javascript

Course Code
```
function(){
  $(this).html("<strong>Location:</strong> Your house?!");
},
```
```
function() {
  $(this).html("<strong>Location:</strong> Treehouse Adoption Center");
});  
```
Getters vs. Setters 2:40

In this video, we’ll talk about the concept of getters and setters. This is something you’ll see across lots of different programming languages and platforms. Getters are used for retrieving information while setters are used to (you guessed it) set, or assign, values.

Course Links

jQuery’s html() method
http://api.jquery.com/html/


## Getters vs. Setters 2:40

In this video, we’ll talk about the concept of getters and setters. This is something you’ll see across lots of different programming languages and platforms. Getters are used for retrieving information while setters are used to (you guessed it) set, or assign, values.

jQuery’s html() method
http://api.jquery.com/html/


Adding Content to the Page 3:55

We can create new DOM elements or clone existing elements. In this video, we’ll learn how to add new content to the page.

jQuery's jQuery() or $ method
https://api.jquery.com/jquery/
jQuery’s val() method
http://api.jquery.com/val/
jQuery’s append() method
http://api.jquery.com/append/

Course Code
```
var $newPet = $(
   '<section class="six columns"><div class="card"><p><strong>Name:</strong> ' + $name +
   '</p><p><strong>Species:</strong> ' + $species +  
   '</p><p><strong>Notes:</strong> ' + $notes +
   '</p><span class="close">&times;</span></div></section>'  
);
```

Showing and Hiding Content 2:20

A big part of what jQuery is used for is showing and hiding elements on a page. We can even assign animations as we show and hide those elements.

The jQuery Basics Documentation
https://api.jquery.com/category/effects/basics/

Category: Basics
.hide()
.show()
.toggle()

Changing Styles 1:45

Rather than using the attr() method, we can change the styling for our elements by adding or removing a class or by setting the CSS on an element.

CSS methods
http://api.jquery.com/category/css/

jQuery’s css() method
http://api.jquery.com/css/
jQuery’s addClass() method
http://api.jquery.com/addclass/
jQuery’s removeClass() method
http://api.jquery.com/removeclass/
jQuery’s toggleClass() method
http://api.jquery.com/toggleclass/

Removing Content from the Page 2:39

Sometimes, you’ll want to completely remove an element from the page, not just hide it away.

jQuery’s remove() method
http://api.jquery.com/remove/

takes matched elements and removes them from the DOM.

## Why We Traverse the DOM 4:29

We want to minimize the number of times we search the entire DOM for a particular element or set of elements. We certainly don’t want to have to search for the same part(s) of the DOM more than once. You always want your code to be as DRY as possible while still being readable.

jQuery’s traversal methods
https://api.jquery.com/category/traversing/tree-traversal/
Don’t Repeat Yourself
https://en.wikipedia.org/wiki/Don%27t_repeat_yourself

Course Code
Pause the course and try adding some more student names to your array!
```
   //Reset Form Fields
   $('#pet-name').val("");
   $('#pet-species').val("Dog");  
   $('#pet-notes').val("");
```

## Understanding the DOM Tree 1:13

The Document Object Model describes the hierarchy and structure of all the elements on a web page, as well as how developers can interact with those elements, called nodes. Visual representations of the DOM look like an upside-down tree with branches.

MDN article on the DOM
https://developer.mozilla.org/en-US/docs/Web/API/Document_Object_Model

## parent()2:28

The parent() method returns the parent of the matched element, which is the element immediately above on the DOM tree.

Course Link

jQuery’s parent() method
https://api.jquery.com/parent/

Course Code
```
// Make the 'x' in the corner remove the section it's contained within
```

## find(), prev(), and next() 1:45

In this video, we’ll briefly discuss the prev() and next() methods, then use the find() method to clean up our code by reducing the number of times we search the DOM.

Course Links

jQuery’s find() method
https://api.jquery.com/find/
jQuery’s prev() method
https://api.jquery.com/prev/
jQuery’s next() method
https://api.jquery.com/next/
jQuery Basics Course

# siblings() 3:03

We can use the siblings() method to grab all the siblings (elements that share a parent within the DOM) of the selected element. We can then act on that new set of selected elements.

Course Links

jQuery’s .siblings() method
https://api.jquery.com/siblings/
jQuery’s .children() method
https://api.jquery.com/children/
jQuery’s .closest() method
https://api.jquery.com/closest/
jQuery’s .map() method
https://api.jquery.com/map/

Wrap Up! 1:07

Fantastic work! You’ve taken a plain brochure site and made it much more user-friendly and exciting. There’s so much more to learn about jQuery as you continue to build your skills as a web developer. Join the conversation in the Treehouse Community to reinforce what you’ve learned here and check out the teacher’s notes for resources that cover more advanced topics related to jQuery.

jQuery Basics provides a hands-on, project-based introduction to jQuery. Take what you've learned in this course and build 5 fun, interactive projects.

Using jQuery Plugins introduces jQuery plugins -- cool programs that work with jQuery that let you add interactive page effects, engaging user interfaces and eye grabbing additions to your web pages.
