JavaScript and the DOM
226-minute JavaScript Course

About this Course

JavaScript lets you create interactive web pages which can respond to a user's actions. In this course, you'll learn how to bring web pages to life using the power of JavaScript.

What you'll learn

What is the DOM?
Making Changes to the DOM
Responding to User Interaction
Travelling Through the DOM (Traversal)
The Browser Environment

The environment that JavaScript runs in — like a browser, or a server, or even an embedded computer — has a fundamental effect on what it can do. In this stage we'll explore the browser environment, and see how JavaScript can change a webpage right before our eyes.

Welcome and Overview
selecting elements on the page
listening for user actions

Thinking Globally
JavaScript's global environment is full of controls your code can use to make things happen. These controls come in the form of JavaScript objects and functions. Inside a browser, they allow your code to see and manipulate web pages.
MDN page for the window object
https://developer.mozilla.org/en-US/docs/Web/API/Window
MDN page for the document object
https://developer.mozilla.org/en-US/docs/Web/API/Document

What is the DOM?
The Document Object
where the actions take place
DOM stands for Document Object Model. The DOM is a representation of a webpage that JavaScript can use. Changes that JavaScript makes to the DOM alter the web page.

Global Scope - Main global variable is the document object

1 Select the elements
2 Read or change elements
3 Respond to user events

The Browser Environment Review

Learn to select an element that doesn't have an ID, or select multiple elements on a page, using getElementsByTagName.

5 questions
Getting a Handle on the DOM

The first step of making a web page interactive is grabbing ahold of elements you want the user to interact with. This is called selection. There are a number of ways to select elements on a web page. Let's explore those you are likely to use most often.

Select All Elements of a Particular Type 6:08
with Guil Hernandez and Joel Kraft
Learn to select an element that doesn't have an ID, or select multiple elements on a page, using getElementsByTagName.

<p>Things that are purple:</p>
<ul>
  <li>grapes</li>
  <li>amethyst</li>
  <li>lavender</li>
  <li>plums</li>
</ul>

MDN page for getElementsByTagName

An HTML collection is similar to an array. Read up on HTML collections here.

Using CSS Queries to Select Page Elements 4:50
with Guil Hernandez and Joel Kraft

The last selectors we'll look at are querySelector and querySelectorAll. These are the most flexible of the selectors we've looked at, as they will accept ID's, classes, tag names and more.

CSS selectors are a powerful way to select DOM elements. If you'd like to learn more about CSS selectors, including pseudo-class selectors, check out CSS Selectors on Treehouse.

In addition, here's what MDN has to say about CSS selectors.

querySelector and querySelectorAll

let navigationLinks = document.querySelectorAll('nav ul li a');

MDN page for querySelector

MDN page for querySelectorAll

Learning More 4:09
with Guil Hernandez and Joel Kraft

You've seen a number of ways to select elements, and in some cases, a number of different ways to make the same selections. But how do you know the right one to use? This video covers great resources to help you evaluate the tools you use for your projects.

Many JavaScript developers turn to tools like Babel to manage the varying stages of browser support for new JS features. Babel can be used for other environments besides browsers too. Check out Introduction to Babel on Treehouse for help getting set up with this great tool.

Mozilla Developer Network

Here is the Mozilla Developer Network, or MDN's main page. This is a great reference site for JavaScript, as well as the browser environment.

MDN's page on the Document object

Can I Use?

caniuse.com is also a good reference to check cross-browser support for features you want to use.

Making Changes to the DOM

Once we've selected an element in the DOM, we can read or affect it. We can replace or change the display of text, for example. Or we can create new nodes and insert them into the DOM. Let's learn about and get some practice with some of these actions.

Element.textContent
Element.innerHTML

Node.appendChild(childElement)

document.createElement('div');

Element.className

p.title = "List description";

textContent
innerHTML

let myHeading = document.querySelector('h1');

myHeading.textContent

myHeading.textContent = "New Heading"

let ul = document.querySelector('ul')

ul.innerHTML = "<li>red cabbage</li>"

attributes are properties of an element object

input has a type attribute of textContent

input.type

input.className

input.type = 'checkbox'

Element.style.prop

Node.removeChild(childElement);

Changing Element Attributes 2:56
with Guil Hernandez and Joel Kraft

Attributes, like the href attribute on a link, or the action attribute on a form, exist as properties of an element object. You get or set them in a similar way we saw with text in the last video. In this video, we'll look at index.html and find an attribute to access.

Here is a list of standard HTML element attributes for reference.
https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes

You can also use getAttribute and setAttribute to manage attributes, though the technique presented in the video is more likely what you'll see in production.

Events :
load
click
dblclick
mousedown
mouseup
mousemove
mouseover
mouseout
touchstart
keydown
keyup
keypress

MDN has a thorough list of DOM events, as well as demonstration code so you can see many of them in use.
https://developer.mozilla.org/en-US/docs/Web/Events

events trigger responses.

Functions as Parameters 4:27
with Guil Hernandez and Joel Kraft
Just as you can pass a number to a function, you can pass a function to a function. This might sound a bit strange, but once you've tried it a few times, you'll get the hang of it. You'll also unlock one of JavaScript's most powerful features.

To learn more about the distinction between function expressions and function statements, check out the MDN articles linked below.

Function statements
https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/function
Function expressions
https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/function

Delaying Execution with setTimeout() 2:35
with Guil Hernandez and Joel Kraft
The window object has a setTimeout function we can use to delay the execution of a function.

MDN page for setTimeout
https://developer.mozilla.org/en-US/docs/Web/API/WindowTimers/setTimeout
var timeoutID = window.setTimeout(func[, delay, param1, param2, ...]);

Listening for Events with addEventListener()7:49
with Guil Hernandez and Joel Kraft

You learned that there are three basic concepts to making a site interactive. Selection is always the first step. Then you can either manipulate the element directly, or ask it to listen for user actions. Now it's time to learn about the third one, listening for user actions, or events.

Making a Site interactive

1. selecting elements on a page
2. Manipulating elements
3. Ask element to listen for user actions

EventTarget.addEventListener();

Responding to User Interaction

Now we'll get to "teach" an element to behave a certain way when a user interacts with it. For example, we could have a form field turn red if a user enters invalid text. Or a menu could appear if a user clicks on the menu bar. Let's look at these and other behaviors we can set up on a web page.

What is an Event? 2:05
with Guil Hernandez and Joel Kraft
Any time you interact with a webpage, you generate all kinds of events. An event is something you do on the web page, like moving your mouse around, scrolling, or clicking a link. Browsers "listen" for events and, with JavaScript, we can do something in response to an event.

10 steps

Traversing the DOM

You have your hands on one element, but you want to grab another one nearby. You could go all the way back out to the document and call to it from there, but chances are your node already has a reference to it. Let's learn how to get around in, or traverse, the DOM.

 11 steps
