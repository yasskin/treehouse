jQuery helps front-end developers employ something called Unobtrusive JavaScript. Not discriminating against any user.
api.jquery.com/

jQuery Documentation
http://api.jquery.com/

Beginner’s Guide to jQuery
http://blog.teamtreehouse.com/beginners-guide-to-jquery

Most people use jQuery by hosting it on a CDN.

Categories
Attributes, includes classes
CSS. change style properties
Dimensions. technically manipulation.
Effects. Manipulation over time.
Events. When a user interacts with a broswer.
Offset. To figure out the location of an object. Manipulation.
Traversing. Includes all methods to move around the document. Cycling through parent / sibling / child elements.
Selectors. Some jQuery specific selectors.

NODE
a node is a branching point that reveals more nodes
the tree structure is called the DOM tree or document object model

The Document Object Model is how the browser interprets HTML files.

Traversal: traversing the DOM. Moving around the DOM
* Moving from parent element to its children
* Moving from child element to its parent
* Moving from a sibling element to another sibling element

Event Methods
* Keyboard (keystroke) and Mouse events (clicks)

document.getElementByClassName("warning")

jQuery helps front-end developers employ something called Unobtrusive JavaScript. In this video we will cover what it is.

http://blog.teamtreehouse.com/unobtrusive-javascript-important

Beginner’s Guide to jQuery
http://blog.teamtreehouse.com/beginners-guide-to-jquery

http://api.jquery.com/

jQuery or $

method chaining:
$(".warning").hide().show("slow");

$(".warning").show("slow");

pass in parameters

The Document Object Model is how the browser interprets HTML files.

Chrome DevTools Basics
https://teamtreehouse.com/library/website-optimization#chrome-devtools-basics

Document object can be accessed by
> document
> document.head.children
> document.body.children[0]

Everything in the DOM
Travers the DOM - Traversal

JavaScript

document.getElementByClassName("warning")

jQuery

$(".warning")

It is easier to manipulate the DOM with jQuery.

Preparation

The Four Ps of Problem Solving
1. Preparation
2. Plan
3. Perform
4. Perfect

app.js
//Prevent spoilerphobes from seeing spoilers
//Solution: Hide spoilers and reveal them through user interaction

//1, Hide spoiler
$(".spoiler span").hide();
//2, Add a button
$(".spoiler").append("<button>Reveal Spoiler!</button>");
//3, When button pressed
$("button").click(function(){
  //3.1, Show spoiler
  $(".spoiler span").show();
  //3.2, Get rid of button
  $(this).remove();
});

index.html
<!DOCTYPE html>
<html>
<head>
	<title>Star Wars Spoilers</title>
	<link rel="stylesheet" href="css/style.css" type="text/css" media="screen" title="no title" charset="utf-8">
</head>
<body>
	<img src="img/deathstar.png" />
	<p class="spoiler">
		<!--Spoiler:-->
		<span>Darth Vader is Luke Skywalkers Father! Noooooooooooo!</span>
	</p>
	<script src="http://code.jquery.com/jquery-1.11.0.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/app.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>

style.css
body {
  background: #2f558e url(../img/bg.png) repeat 0 0;
  background-size: 400px auto;
  font-family: sans-serif;
}
img {
  display: block;
  width: 150px;
  margin: 100px auto;
}
button {
  background: #dae1e4;
  border: none;
  border-radius: 5px;
  color: #1d3c6a;
  font-size: 24px;
  width: 480px;
  padding: 40px 0;
  margin: -40px -20px;
  outline: none;
  cursor: pointer;
}
.spoiler {
	background: #1d3c6a;
  width: 440px;
  margin: 0 auto 20px;
  border-radius: 5px;
  padding: 40px 20px;
  text-align: center;
  font-size: 24px
}
.spoiler span {
  color: #dae1e4;
}
