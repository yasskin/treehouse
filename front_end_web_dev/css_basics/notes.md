The CSS Box Model 4:05
with Guil Hernandez

The box model is what describes the amount of space each element takes up on the page. Let's dig a little deeper into this concept by going over the main components that make up the CSS Box Model.

The CSS Box Model - MDN
https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Box_Model/Introduction_to_the_CSS_box_model

The innermost box is the "content"
"padding" surrounds the content
the "border" is the outermost
"margin" exists outside the box

padding creates area inside the box; margin creates area outside and around the box

with Guil Hernandez
By default, an element's width and height are as wide or as tall as the content it holds. But we're able to set our own dimensions with the width and height properties.

width
https://developer.mozilla.org/en-US/docs/Web/CSS/width
height
https://developer.mozilla.org/en-US/docs/Web/CSS/height

box-sizing and max-width 6:31

With the box-sizing property, we can alter the way the browser calculates an element's total width and height. We're also able to set the maximum width of an element with the max-width property.

box-sizing
https://developer.mozilla.org/en-US/docs/Web/CSS/box-sizing
Alters the default CSS box model used to calculate widths and heights of elements.

max-width
Sets the maximum width of an element. It prevents the used value of the width property from becoming larger than the value set for max-width.

Related Articles

Take Control of the Box Model with box-sizing
http://blog.teamtreehouse.com/take-control-of-the-box-model-with-box-sizing

Backgrounds: Size and Position 6:08

In this video, we'll learn how certain properties affect the size and position of an element's background.

Full Page Background Images in CSS
background-position
Controls the background position of a background image. By default, a background image’s initial position is the top-left corner of the containing element.

background
Shorthand for setting the individual background values in one place.

cover
The cover value adjusts the background area so that it's completely covered by the background image, while maintaining its width and height proportions:

.main-header {
  background-image: url('../img/mountains.jpg');     
  background-size: cover;
}

Floats 5:23

In this video, we’ll learn some of the basics of float layout.

CSS Layout Techniques - Floats

Quick Reference

Floats are one of the most commonly used methods for laying out a page with CSS. When an element is floated, the element is taken out of the normal flow of the page and placed along the left or right side of its container.

The following will float an element over to the right side of its container:

.tips {
  float: right;
}
The following will place the element along the left side of its container:

.tips {
  float: left;
}

Lists 6:18

In this video, we’ll cover the different ways we can use list properties to control the appearance of our lists.

list-style-type
Sets the appearance of a list item.

list-style-position
Sets the position of a list marker in a list item. By default, the browser displays the list markers outside the list items.

list-style
The shorthand property for setting list-style-type, list-style-image and list-style-position.

Text Shadows 5:43

In this video, we'll learn how to add shadows to text with CSS.

Box Shadows 6:22

Like text-shadow, we're able to cast shadows off elements with the box-shadow property.

The order of values for box-shadow is exactly like the order of values for the text-shadow property:

.wildlife {
    box-shadow: 15px 15px 10px 20px rgba(0, 0, 0, .8);
}
The first value sets the horizontal offset of the shadow. The second value sets the vertical offset. The last value sets the color of the box shadow.

The optional third value defines the blur radius in a box shadow. The optional fourth value defines the spread distance of a box shadow.

Inner shadows
By default, box shadows are created as drop shadows outside of the element. To create an inner shadow, we can add the keyword value inset:

.wildlife {
   box-shadow: inset 0 0 50px 10px rgba(0, 0, 0, 1);
}
Multiple values
Just like the text-shadow property you can use multiple box-shadow values separated with a comma like so:

.wildlife {
    box-shadow: 15px 15px 10px 20px rgba(0, 0, 0, .8),
                            inset 0 0 50px 10px rgba(0, 0, 0, 1);
    }

Gradients 7:23

With CSS gradients, we can add depth to our designs by creating smooth and gradual transitions between two or more colors.

Using CSS gradients
https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Images/Using_CSS_gradients
linear-gradient
radial-gradient

Gradients: Color Stops 3:49

We're able to add color stops to control the progression of colors in a linear and radial gradient. Color stops are stopping points in a gradient that show a specific color at the exact location we set.

Color stops in CSS gradients
https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Images/Using_CSS_gradients#Linear_gradients-Color_stops

Transparent Gradients and Multiple Backgrounds3:56

CSS lets us layer multiple backgrounds and create gradients where a color value transitions into a transparent value. In this video, we're going to create transparent gradients that overlay our main header's background image.

Transparency and gradients
https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Images/Using_CSS_gradients#Transparency_and_gradients

Using CSS multiple backgrounds
https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Background_and_Borders/Using_CSS_multiple_backgrounds

Web Fonts with @font-face 8:32

Web fonts are special types of fonts that are optimized for screen display, and they're linked to our web pages from an external source. Web fonts eliminate the need to depend on the limited number of fonts installed on a user's computers.

How to Choose and Use Webfonts
Quick Reference

@font-face
https://developer.mozilla.org/en-US/docs/Web/CSS/@font-face
letter-spacing
https://developer.mozilla.org/en-US/docs/Web/CSS/letter-spacing
Resources

Font Squirrel – Free web fonts
https://www.fontsquirrel.com/

Web Typography
https://teamtreehouse.com/library/web-typography#how-to-choose-and-use-webfonts

EOT Embedded OpenType format

Media Queries

With media queries, we're able to enhance the browsing experience of websites on multiple devices and viewport sizes. This allows us to tailor our content to a wide range of devices without having to change anything in the HTML.

CSS media queries - MDN
@media
Media features
Probably Use initial-scale=1
Tools

Window Resizer - Resize browser window to emulate various screen resolutions

Adjusting the Layout with Media Queries 13:16

As the final step in our Lake Tahoe website project, we'll need to add media query breakpoints to adjust the layout for mobile devices and narrow viewport sizes.

Using the viewport meta tag to control layout on mobile browsers
Tools

Device Mode & Mobile Emulation
Window Resizer - Resize browser window to emulate various screen resolutions

The Cascade: Importance 2:26

An important part of learning CSS is understanding how CSS rules are applied by the browser via the cascade. In CSS, the cascade is what determines which styles are assigned to an HTML element.

The Cascade: Specificity and Source Order 2:32

Specificity is what resolves a lot the conflict between style declarations and decides which styles are applied by the browser. The cascade also assigns a priority to CSS styles based on what order they appear.

Cascade - MDN
Specificity - MDN

Inheritance 2:27

Inheritance in CSS means that an element’s style values are copied from its parent element. Inheritance allows us to keep styles consistent throughout a website without having to repeat them in our code.

Cascading and inheritance - MDN
inherit value
initial value

Learning Tips and Tools 2:59

In this video, we'll cover tips and tools to help you practice and retain what you’re learning.

Create new subpages for the Lake Tahoe website
Build a single-page website for your favorite city
Build a small website component, like a header, navigation, or form
Redesign the website of your favorite local restaurant or band
Design a website for a local non-profit organization
Learn how to refactor the Lake Tahoe website with Sass in our new course CSS to Sass
https://teamtreehouse.com/library/css-to-sass

More CSS Courses

CSS Selectors (new)
https://teamtreehouse.com/library/css-selectors
CSS Layout Techniques
https://teamtreehouse.com/library/css-layout-techniques
CSS - Beyond the Basics
https://teamtreehouse.com/library/css-beyond-the-basics
Web Typography
https://teamtreehouse.com/library/web-typography
Framework Basics
https://teamtreehouse.com/library/framework-basics

Tools

Workspaces
CodePen
http://codepen.io/
