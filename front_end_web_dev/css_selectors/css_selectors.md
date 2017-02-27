FRONT END WEB DEVELOPMENT

CSS SELECTORS

Course Overview 1:49
with Guil Hernandez

Get a quick overview of the CSS Selectors course.

Attribute Selectors 8:44

CSS gives us the flexibility of being able to target an element by any of its HTML attributes and values.

Attribute Selectors - MDN

Using attribute selectors
https://developer.mozilla.org/en-US/docs/Web/CSS/Attribute_selectors

This attribute selector targets any element that has a class attribute:

```
[class] {
  border: solid 1px #ccc;
}
```

To target an input element with a type value of submit, we write:

```
input[type="submit"] {
  background-color: green;
}
```

This targets a elements with a target value of _blank:

```
a[target="_blank"] {
  color: tomato;
}
```
__

Styling Form Buttons and Links with Attribute Selectors 3:34

Now that we know how to target an element's attribute, let's learn the different ways we can select form buttons and links with attribute selectors.

Attribute Selectors - MDN
https://developer.mozilla.org/en-US/docs/Web/CSS/Attribute_selectors

Using attribute selectors with form elements

This target an input element with a type value of email:

input[type="email"] {
  background: yellow;
}

DRY CSS 10:51

DRY stands for "Don’t Repeat Yourself." The main idea with DRY in CSS is to avoid repeating the same bits of code in our style sheet. In this video, we'll take a look at a few example of writing DRY'er CSS.


CSS Basics - Reusing Classes
https://teamtreehouse.com/library/css-basics/basic-selectors/reusing-classes
CSS Best Practices - Workshop
https://teamtreehouse.com/library/css-best-practices

DRY Example

Don't Repeat Yourself

Each property value pair is defined once.

It works best with classes - not IDs.

CSS:
```
.btn {
 cursor: pointer;   
 color: #fff;
 padding-left: 20px;
 padding-right: 20px;
}
.default-theme {
  background-color: coral;
}
```
HTML:
```
<input class="btn default-theme" type="submit" value="submit">
```

Child, Adjacent, and General Sibling Combinators 9:03

Combinators give us the flexibility of targeting any siblings of an element. We can use the greater-than sign (>), plus sign (+), or tilde symbol (~) to make our selectors more specific.

Child Selectors - MDN
https://developer.mozilla.org/en-US/docs/Web/CSS/Child_selectors
Adjacent Sibling Selectors - MDN
https://developer.mozilla.org/en-US/docs/Web/CSS/Adjacent_sibling_selectors
General Sibling Selectors - MDN
https://developer.mozilla.org/en-US/docs/Web/CSS/General_sibling_selectors

Using combinators

The > combinator targets a direct child of an element
The + combinator targets an element's immediate sibling
The ~ combinator targets all the specified siblings that follow an element

- > Child Combinator

Review

Attribute selectors can target an element by any of its HTML Attribute_selectors
DRY Don't repeat Yourself
">" targets the direct child of an element
"+" targets immediate siblings
"~" targets all the specified siblings that follow and element

:first-child and :last-child 4:15

In this video, we'll learn how to target first and last child elements with the :first-child and :last child structural pseudo-classes.

:first-child - MDN
https://developer.mozilla.org/en-US/docs/Web/CSS/:first-child
:last-child - MDN
https://developer.mozilla.org/en-US/docs/Web/CSS/:last-child

Using :first-child and :last-child

To target the first child div element inside a parent, we can write:

```
div:first-child {
  margin-left: 0;
}
```
To target the last li element in a list, we can write:
```
li:last-child {
  float: right;
}
```
:only-child and :empty 4:58

Besides being able to target first and last child elements with pseudo-classes, the browser can also target only child elements and empty elements.

:only-child - MDN
https://developer.mozilla.org/en-US/docs/Web/CSS/:only-child
:empty - MDN
https://developer.mozilla.org/en-US/docs/Web/CSS/:empty
Using :only-child and :empty

To target a span that is the only child element in a parent div, we can write:
```
div span:only-child {
  font-size: .5em;
}
```

To target all elements that have no child content, we can write:
```
:empty {
  background: red;
}
```

Substring Matching Attribute Selectors - "Begins With" and "Ends With" 8:19

With substring matching attribute selectors, we can target specific pieces of an attribute's value, like certain letters and words.

Attribute Selectors - MDN
https://developer.mozilla.org/en-US/docs/Web/CSS/Attribute_selectors
Using substring matching attribute selectors

^ tells the browser to match a piece of code that’s at the beginning of an attribute's value
$ matches a piece at the end of an attribute's value.
* matches any part of an attribute's value

Substring Matching Attribute Selectors - "Contains" 6:44

The “contains” substring matching attribute selector targets an element containing the piece of code we define anywhere in an attribute's value.

Attribute Selectors - MDN
https://developer.mozilla.org/en-US/docs/Web/CSS/Attribute_selectors
Using substring matching attribute selectors

^ tells the browser to match a piece of code that’s at the beginning of an attribute's value
$ matches a piece at the end of an attribute's value
* matches any part of an attribute's value
This selector matches an a element containing the word blog anywhere inside its href value:

```
a[href*="blog"] {
  border-bottom: solid 2px steelblue;
}
```

Element States Pseudo-Classes 6:20

Like user-action pseudo classes, CSS has UI element states pseudo-classes that let us target elements based on user interaction states.

CSS Basics - Pseudo-Classes
https://teamtreehouse.com/library/css-basics/basic-selectors/pseudoclasses

Quick Reference

:disabled - MDN
https://developer.mozilla.org/en-US/docs/Web/CSS/:disabled
:checked - MDN
https://developer.mozilla.org/en-US/docs/Web/CSS/:checked

Using :disabled and :checked

To target a disabled input element, we can write:
```
input:disabled {
  background-color: grey;
}
```
To target a radio button or checkbox when checked, we can write:
```
:checked {
  border-color: red;
}
```
:first-child and :last-child select the first and last child of a parent

:only-child targets elements with no siblings

:empty targets elements with no children or content

Substring matching attribute selectors match specific pieces of an attribute's value

:disabled

:checked

:nth-child 8:00

:nth-child is a powerful structural pseudo-class because it targets child elements based on any position inside a parent.

:nth-child - MDN
https://developer.mozilla.org/en-US/docs/Web/CSS/:nth-child

Using :nth-child

This target the even li elements in a parent:
```
li:nth-child(even) {
  background: blue;
  color: white;
}
```
:nth-of-type 4:30

The :nth-of-type pseudo-class targets an element based on its position within a parent, but only if it’s a specific type of element.

:nth-of-type - MDN
Using :nth-of-type

This selector targets the 4th div inside the parent, no matter what type of child elements come before it:
```
div:nth-of-type(4) {
  background: #52bab3;
  color: white;
}
```
:root and :target 5:12

In this video, we'll cover the :root and :target pseudo-classes. :root selects the highest-level parent element in a document, and :target selects an element when it's the target of a link.

:root - MDN
https://developer.mozilla.org/en-US/docs/Web/CSS/:root
:target - MDN
https://developer.mozilla.org/en-US/docs/Web/CSS/:target

Examples:

Triggering a CSS Animation with :target

:not() – The Negation Pseudo-Class4:46

The :not() pseudo-class is referred to as a negation pseudo-class because it selects everything except the element we specify in the selector.

:not() - MDN
https://developer.mozilla.org/en-US/docs/Web/CSS/:not

Using :not()

This selector targets all input elements that do not have a type value of button:

```
input:not([type="button"]) {
  border-color: blue;
}
```

Pseudo-Elements - ::first-line and ::first-letter5:00

The ::first-line and ::first-letter pseudo-elements let us target the first line of text and the first character in a line of text.

::first-line - MDN
https://developer.mozilla.org/en-US/docs/Web/CSS/::first-line
::first-letter - MDN
https://developer.mozilla.org/en-US/docs/Web/CSS/::first-letter

Pseudo-Elements - ::before and ::after 8:13

The ::before and ::after pseudo-elements let us insert virtual elements before and after an element’s content. These virtual elements are visible to the user and are style-able with CSS, but they do not appear in the source code.

::before - MDN
https://developer.mozilla.org/en-US/docs/Web/CSS/::before
::after - MDN
https://developer.mozilla.org/en-US/docs/Web/CSS/::after
content - MDN
https://developer.mozilla.org/en-US/docs/Web/CSS/content

What we need to know about pseudo-elements

The only way we're able to generate pseudo-elements is with the content property.
Pseudo-elements do not work with images and form elements. Replaced elements like input or img have no content, so we shouldn't be able to use generated content for them (source).


The attr() CSS Function 6:32

We're also able to write simple CSS functions to generate content. In this video, we'll see how the attr() function inserts an element's attribute value as page content. Before we wrap up, we'll do a quick review of the advanced selectors we just learned.

attr() - MDN
https://developer.mozilla.org/en-US/docs/Web/CSS/attr

Using attr()

This pseudo-element rule will insert the value of an a element's title attribute after the link's content:

```
a::after {
  content: attr(title);
}
```
