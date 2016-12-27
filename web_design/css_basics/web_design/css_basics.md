Common Data Types 4:33
with Guil Hernandez

Before we get started, let's take a look at a good reference for CSS data types provided by the Mozilla Developer Network docs. Then, we'll cover the most important data types we'd use on a day-to-day basis.
https://developer.mozilla.org/en-US/docs/tag/CSS%20Data%20Type

example 

color: orange; 
color value "orange" is predefined.

Pixel Units 4:11
with Guil Hernandez
When we use pixel units, the size we define will always remain the same and will not scale, regardless of the browser window and size of the screen.

CSS length units
CSS px is an Angular Measurement
Understanding pixels and other CSS units

Using pixel units

.main-header {
  background-color: orange;
  width: 960px;
}

main-header will always take up 960px of the screen.

CSS pixel "px" is an abstract reference unit - referes to standard density display. display rescales the pixel value. 

Percentages 4:35
We can define number values more fluidly with percentage units. Percentages, by nature, are always relative to something else. When we use a percentage unit in CSS, the percentage value is measured relative to a parent element's length.

Percentage units
Using percentages

.main-header {
  width: 75%;
}
main-header will take up 75% of the browser window's width.

Em Units 6:50

Relative length units are relative to other length values. The most commonly used relative unit is the em unit. The em is known as a font-relative unit because it's calculated based on a parent element's font size.

The typical font size is 16px.

Using em units

If we set our body's font-size value to 1em:

body {
  font-size: 1em;
} 

This is equivalent to setting the font-size value to:

body {
  font-size: 16px;
}

Converting pixels to ems

To convert a px value to its equivalent em value, we can follow a simple formula: divide an element’s px value by the parent element's font-size value.

For example:

.intro {
  font-size: 24px;
}
To convert the font-size value of intro to an em value, we'll need to divide 24 by the parent element's font-size. In this case, the parent element is the body element, which has the font-size set to 1em, or 16px.

24/16 = 1.5
This gives us an em-based font-size value of:

.intro {
  font-size: 1.5em;  /* 24px/16px */
}
Tools

PX to EM conversion made simple

Rem Units 2:57
The rem unit is similar to the em unit. The difference is that rem is relative only to the root element of the page. This gets us around the compounding font size issue we experience with em units.

Font sizing with rem
Using rem units

h1 {
  font-size: 5.625rem;
}
The h1 font size is now relative to the default 16px font size of the root <html> element.

Related Videos

Font-Sizing: Px, Em, and Rem