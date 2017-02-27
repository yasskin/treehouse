# Welcome and Overview 4:22
with Guil Hernandez and Joel Kraft

JavaScript is an exciting language you can use to power web servers, create desktop programs, and even control robots. But JavaScript got its start in the browser. It was created to make web pages responsive to mouse clicks and other input from visitors. In this video, we'll take a look at a few example of JavaScript in action.

Website examples:

Wikipedia
https://en.wikipedia.org/wiki/Main_Page
JavaScript Calculator
http://codepen.io/giana/full/GJMBEv/
St. Louis Browns Historical Society
http://thestlbrowns.com/
Google Sheets
https://www.google.com/sheets/about/

Related Treehouse courses and workshops

Introducing ES2015 – course
Exploring JavaScript Conditionals – workshop
Introducing Arrow Function Syntax – workshop

# Thinking Globally 6:42

JavaScript's global environment is full of controls your code can use to make things happen. These controls come in the form of JavaScript objects and functions. Inside a browser, they allow your code to see and manipulate web pages.

MDN page for the window object
https://developer.mozilla.org/en-US/docs/Web/API/Window
MDN page for the document object
https://developer.mozilla.org/en-US/docs/Web/API/Document

# What is the DOM? 2:07

DOM stands for Document Object Model. The DOM is a representation of a webpage that JavaScript can use. Changes that JavaScript makes to the DOM alter the web page.

MDN page for the Document Object Model
https://developer.mozilla.org/en-US/docs/Web/API/Document_Object_Model

Global scope - window object
Document
Document Object Model

3 Step Sequence

1. select the element
2. read of change element
3. respond to user events

# A Simple Example 4:12

In this video, we'll select an element with JavaScript and start with one of the most common user interactions: clicking.

Declaring variables

This course uses let and const to declare variables and constants instead of the var keyword. If these are new to you, check out the Defining Variables with let and const workshop.

Arrow Functions

If you're new to ES2015's arrow functions, they provide a more concise syntax for writing functions. Introducing Arrow Function Syntax is a short workshop (8 min) that will show you everything you'll need for this course.

For more advanced use cases, take a look at Arrow Functions – Introducing ES2015.

# Select a Page Element By Its ID 5:59

In this video, we'll select and change the headline color, but this time, we'll do it in response to clicking a button.

MDN page for getElementById
https://developer.mozilla.org/en-US/docs/Web/API/Document/getElementById

Accessing the value of an input element

Use the value property to get the text that has been entered into an input element. For example, if you have a text input stored in a variable myInput, you can retrieve any text the user has typed into that input like this:

```
myInput.value
```

Experiment with the app

Add a button that always resets the title to black
Create another field that sets a different style attribute of the headline

# Select All Elements of a Particular Type 6:08

Learn to select an element that doesn't have an ID, or select multiple elements on a page, using getElementsByTagName.

Code snippet
```
<p>Things that are purple:</p>
<ul>
  <li>grapes</li>
  <li>amethyst</li>
  <li>lavender</li>
  <li>plums</li>
</ul>
```

MDN page for getElementsByTagName
https://developer.mozilla.org/en-US/docs/Web/API/Element/getElementsByTagName

An HTML collection is similar to an array. Read up on HTML collections here.
https://developer.mozilla.org/en-US/docs/Web/API/HTMLCollection

# Selecting Elements with the Same Class Name 2:48

When working with HTML, you'll use classes to give elements a particular style with CSS. In this video, you'll learn to select elements with the same class, using document.getElementsByClassName.

MDN page for getElementsByClassName
https://developer.mozilla.org/en-US/docs/Web/API/Document/getElementsByClassName

# Using CSS Queries to Select Page Elements 4:50

The last selectors we'll look at are querySelector and querySelectorAll. These are the most flexible of the selectors we've looked at, as they will accept ID's, classes, tag names and more.

CSS Selectors

CSS selectors are a powerful way to select DOM elements. If you'd like to learn more about CSS selectors, including pseudo-class selectors, check out CSS Selectors on Treehouse.
https://teamtreehouse.com/library/css-selectors

In addition, here's what MDN has to say about CSS selectors.
https://developer.mozilla.org/en-US/docs/Learn/CSS/Introduction_to_CSS/Selectors

querySelector and querySelectorAll

MDN page for querySelector
https://developer.mozilla.org/en-US/docs/Web/API/Document/querySelector

MDN page for querySelectorAll
https://developer.mozilla.org/en-US/docs/Web/API/Document/querySelectorAll

# Learning More 3:48

You've seen a number of ways to select elements, and in some cases, a number of different ways to make the same selections. But how do you know the right one to use? This video covers great resources to help you evaluate the tools you use for your projects.

Babel

Many JavaScript developers turn to tools like Babel https://babeljs.io/ to manage the varying stages of browser support for new JS features. Babel can be used for other environments besides browsers too. Check out Introduction to Babel on Treehouse for help getting set up with this great tool.
https://teamtreehouse.com/library/introduction-to-babel

Mozilla Developer Network

Here is the Mozilla Developer Network, or MDN's main page. This is a great reference site for JavaScript, as well as the browser environment.
https://developer.mozilla.org/en-US/

MDN's page on the Document object
https://developer.mozilla.org/en-US/docs/Web/API/Document

Can I Use?

caniuse.com is also a good reference to check cross-browser support for features you want to use.
http://caniuse.com/

# Getting and Setting Text with textContent and innerHTML 6:58

In this video, you'll learn to read and change text using the DOM element properties textContent and innerHTML. You'll learn how each property has its own approach to the DOM.

MDN page for textContent
https://developer.mozilla.org/en-US/docs/Web/API/Node/textContent
MDN page for innerHTML
https://developer.mozilla.org/en-US/docs/Web/API/Element/innerHTML

# Changing Element Attributes 2:56

Attributes, like the href attribute on a link, or the action attribute on a form, exist as properties of an element object. You get or set them in a similar way we saw with text in the last video. In this video, we'll look at index.html and find an attribute to access.

Here is a list of standard HTML element attributes for reference.
https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes

You can also use getAttribute and setAttribute to manage attributes, though the technique presented in the video is more likely what you'll see in production.
https://developer.mozilla.org/en-US/docs/Web/API/Element/getAttribute
https://developer.mozilla.org/en-US/docs/Web/API/Element/setAttribute

To set the class use Element.className not Element.class

# Styling Elements9 :09

The properties on the style object represent the various CSS properties we can set. This video covers one common use for setting styles with JavaScript: hiding and unhiding elements on the page.

MDN page for style property
https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/style

p.style.color = "darkblue";

p.title = "list description";

# Creating New DOM Elements 4:41

We've made several changes to the elements on our page with JavaScript. Now it's time to take it to the next level and create new elements. In this video, you'll create a new element with

crdocument.createElement().

MDN page for createElement
https://developer.mozilla.org/en-US/docs/Web/API/Document/createElement

# Appending Nodes 3:33

In the last video, you saw how to create elements, but they won't appear on the page until you add them to the DOM. In this video, you'll select an existing node, then learn to append, or add, a new node as a child.

MDN page for appendChild
https://developer.mozilla.org/en-US/docs/Web/API/Node/appendChild

Node.appendChild(childElement);

Nodes belong to the dom. Elements are plain HTML.

# Removing Nodes 3:46

In this video, you'll learn how to remove elements from the page, using the removeChild method.

CSS selectors are a powerful way to select DOM elements. If you'd like to learn more about CSS selectors, including pseudo-class selectors, check out CSS Selectors on Treehouse.

In addition, here's what MDN has to say about CSS selectors.

MDN page for removeChild
https://developer.mozilla.org/en-US/docs/Web/API/Node/removeChild

The Node.removeChild() method removes a child node from the DOM. Returns removed node.

# What is an Event? 2:05

Any time you interact with a webpage, you generate all kinds of events. An event is something you do on the web page, like moving your mouse around, scrolling, or clicking a link. Browsers "listen" for events and, with JavaScript, we can do something in response to an event.

MDN has a thorough list of DOM events, as well as demonstration code so you can see many of them in use.
https://developer.mozilla.org/en-US/docs/Web/Events

Some types of events:
click
dblclick
mousedown
mouseup
touchstart
keydown
keyup
keypress
load

# Functions as Parameters 4:27

Just as you can pass a number to a function, you can pass a function to a function. This might sound a bit strange, but once you've tried it a few times, you'll get the hang of it. You'll also unlock one of JavaScript's most powerful features.

To learn more about the distinction between function expressions and function statements, check out the MDN articles linked below.

Function statements
https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/function
Syntax
```
function name([param,[, param,[..., param]]]) {
   [statements]
}
```

Function expressions
https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/function
Syntax
```
var myFunction = function [name]([param1[, param2[, ..., paramN]]]) {
   statements
};
```

# Delaying Execution with setTimeout() 2:35

The window object has a setTimeout function we can use to delay the execution of a function.

MDN page for setTimeout
https://developer.mozilla.org/en-US/docs/Web/API/WindowOrWorkerGlobalScope/setTimeout

The setTimeout() method of the WindowOrWorkerGlobalScope mixin sets a timer which executes a function or specified piece of code once after the timer expires.

Syntax
```
var timeoutID = scope.setTimeout(func[, delay, param1, param2, ...]);
var timeoutID = scope.setTimeout(function, milliseconds);
```

# Listening for Events with addEventListener() 7:49

You learned that there are three basic concepts to making a site interactive. Selection is always the first step. Then you can either manipulate the element directly, or ask it to listen for user actions. Now it's time to learn about the third one, listening for user actions, or events.

MDN page for addEventListener
https://developer.mozilla.org/en-US/docs/Web/API/EventTarget/addEventListener

EventTarget.addEventListener()

Syntax
```
target.addEventListener(type, listener[, options]);
target.addEventListener(type, listener[, useCapture]);
```
[optional parameter]
type : string representing the event type
listener : an object ; it can be a function

Making a site interactive:

1. Selecting Elements on the Page
2. Manipulating Elements
3. Listening for User Actions

# Event Bubbling and Delegation 4:05

An event received by an element doesn't stop with that one element. That event moves to other elements like the parent, and other ancestors of the element. This is called "event bubbling".

# The Event Object 6:45

In this video, you'll learn how to add an event listener to a parent element and let it handle events on its children.

  EventTarget.addEventListener('click', () => {
    // handle event
  });

  EventTarget.addEventListener('click', (event) => {
    // event is an object with info & methods
  });

MDN page for the Event Object
https://developer.mozilla.org/en-US/docs/Web/API/Event

MDN page for the tagName property
https://developer.mozilla.org/en-US/docs/Web/API/Element/tagName
Syntax
```
elementName = element.tagName;
```

## Traversing the DOM

You have your hands on one element, but you want to grab another one nearby. You could go all the way back out to the document and call to it from there, but chances are your node already has a reference to it. Let's learn how to get around in, or traverse, the DOM.

# Using parentNode to Traverse Up the DOM 7:02

Learn how to get a reference to an element's parent node, using the parentNode property.

MDN page for parentNode
https://developer.mozilla.org/en-US/docs/Web/API/Node/parentNode

Using parentNode to Traverse Up the DOM 7:02

Learn how to get a reference to an element's parent node, using the parentNode property.

MDN page for parentNode
https://developer.mozilla.org/en-US/docs/Web/API/Node/parentNode

The Node.parentNode read-only property returns the parent of the specified node in the DOM tree.

Syntax
```
parentNode = node.parentNode
```

Example
```
if (node.parentNode) {
  // remove a node from the tree, unless
  // it's not in the tree already
  node.parentNode.removeChild(node);
}
```

# Using previousElementSibling and insertBefore 7:49

Learn how to reference a previous sibling with previousElementSibling property, and to insert a node before an element, with insertBefore.

For some background on why previousSibling and other similar properties don't always refer to element nodes, check out this MDN article on Whitespace in the DOM.
https://developer.mozilla.org/en-US/docs/Web/API/Document_Object_Model/Whitespace_in_the_DOM

MDN page for previousElementSibling
https://developer.mozilla.org/en-US/docs/Web/API/NonDocumentTypeChildNode/previousElementSibling

The NonDocumentTypeChildNode.previousElementSibling read-only property returns the Element immediately prior to the specified one in its parent's children list, or null if the specified element is the first one in the list.

Syntax
```
prevNode = elementNodeReference.previousElementSibling;
```

MDN page for insertBefore
https://developer.mozilla.org/en-US/docs/Web/API/Node/insertBefore

The Node.insertBefore() method inserts the specified node before the reference node as a child of the current node.

Syntax
```
var insertedNode = parentNode.insertBefore(newNode, referenceNode);
```

Challenge: Using nextElementSibling 0:37

You've learned a lot so far, and you're ready to write a JavaScript feature on your own. In this challenge, you'll implement a "down" button for each list item that moves the item one position downward in the list. This challenge is a great way to practice what you've learned so far!

MDN page for nextElementSibling
https://developer.mozilla.org/en-US/docs/Web/API/NonDocumentTypeChildNode/nextElementSibling

# Getting All Children of a Node with children 5:39

Learn to get all children elements of a node, with the children property.

MDN page for children
https://developer.mozilla.org/en-US/docs/Web/API/ParentNode/children

Node.children is a read-only property that returns a live HTMLCollection of the child elements of Node.

Syntax
```
var elList = elementNodeReference.children;
```

# Getting the First and Last Child 3:22

Learn to use firstElementChild to get the first child element of a selected element, and lastElementChild, to get the last element.

MDN page for firstElementChild
https://developer.mozilla.org/en-US/docs/Web/API/ParentNode/firstElementChild
The ParentNode.firstElementChild read-only property returns the object's first child Element, or null if there are no child elements.

MDN page for lastElementChild
https://developer.mozilla.org/en-US/docs/Web/API/ParentNode/lastElementChild
The ParentNode.lastElementChild read-only property returns the object's last child Element or null if there are no child elements.
