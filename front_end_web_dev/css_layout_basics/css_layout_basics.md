CSS LAYOUT BASICS

What to Expect 1:37
with Guil Hernandez
Good use of CSS layout is important when building a website or app. No matter what type of site or app you want to build, you will use one -- or several -- CSS layout methods to arrange the content on the page.

CSS Reset with Normalize 5:24
with Guil Hernandez
A CSS reset removes the subtle browser inconsistencies in margins, padding, line-height and font sizes to ensure that your layout displays as consistently as possible across all browsers.

Resources

Download normalize.css
https://necolas.github.io/normalize.css/
About normalize.css
http://nicolasgallagher.com/about-normalize-css/
Other CSS reset methods

Eric Meyer’s Reset CSS
http://meyerweb.com/eric/tools/css/reset/
Popular CSS resets, all in one place
http://cssreset.com/


Creating a Layout Wrapper 3:27
with Guil Hernandez
A wrapper is commonly used to center a layout on the page. The wrapper keeps a layout from looking too wide or too narrow depending on the device or viewport width. This video covers two common ways to create a wrapper in your layout.

Video review

Giving the wrapper a width prevents the layout from stretching too wide.
Setting the left and right margins to the value auto centers the wrapper in the browser.
One advantage to using <body> as the wrapper is that you don’t have to add an extra <div> in your markup to contain your layout.
If you want to give your page a full background color or image, you'll need to apply it to the <html> element, and you can't place any elements outside of the <body>.
Using a wrapper <div> is more appropriate if your site has elements that need to be placed outside the wrapper.

Wrapper and Container are generic terms used to describe layout.

Why Vertical Margins Collapse 3:42
with Guil Hernandez
In this video, you'll learn why vertical margins collapse and how to prevent them from collapsing.

Resources

MDN - Mastering margin collapsing
https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Box_Model/Mastering_margin_collapsing

Video review

If there is no content, padding, or border area to interrupt two touching margins, the margins collapse to the largest of the two margin values.
You may experience margins collapsing in adjacent elements like paragraphs and divs.
If a div's bottom margin is larger than the top margin of the div below it, the margin area between the divs collapses to the largest of the two margin values.

Centering Page Content and Creating a Full-width Header 4:48
with Guil Hernandez
A common layout structure in web design involves a centered content area with a header and footer that take up the full width of the page.

Depending on your design, you may want the header and footer in your layout to stretch from edge to edge of the browser so the left and right sides won't appear cut off.
This approach makes the layout feel open and less constrained.
One approach is to create a wrapper the main content and an inner wrapper for the content inside the header and footer.
You can leave 'outer' elements like the header and footer at their default 100% width.
It's common to have more than one wrapper on a page and even to have containers inside of containers.

Using a Mobile First Approach
with Guil Hernandez
When you use a mobile-first layout approach with CSS, you serve the basic layout styles and minimal amount of code to style a page for a small, mobile device first. Then, using media queries, you add breakpoints which adjust the layout for wider screens and devices.

Mobile First - An adaptive, future-friendly solution for website design
http://zurb.com/word/mobile-first
Brad Frost - Mobile First Responsive Web Design
http://bradfrost.com/blog/web/mobile-first-responsive-web-design/
Box-Sizing: The Secret to Simple CSS Layouts
http://blog.teamtreehouse.com/box-sizing-secret-simple-css-layouts
Take Control of the Box Model with box-sizing
http://blog.teamtreehouse.com/take-control-of-the-box-model-with-box-sizing

Video review

It's easier to build a mobile layout when you're first starting out because you don't have to worry about any of the complex features of wider, desktop layouts.
Mobile layouts are usually simple one column layouts
When you use a mobile-first layout approach, you define all the common layout styles before adding any media queries.
box-sizing: border-box; forces any padding and borders into the width and height of an element instead of expanding it.
Related videos

Take a Mobile First Approach
box-sizing and max-width

Creating a Sticky Footer5:12
with Guil Hernandez
In web design, a sticky footer is a footer that sticks to the bottom of the page regardless of the amount of content on the page.

If you still see a gap below the footer in browsers like Firefox and IE, or when you change the browser's zoom, give .main-footer a height or min-height value of 89px.

Resources

CSS Tricks - Sticky Footer
https://css-tricks.com/snippets/css/sticky-footer/
MDN - min-height
MDN - calc()
Sizing with vh units
https://snook.ca/archives/html_and_css/vm-vh-units

Video review

If a page’s content is shorter than the height of the browser, the page may display a big, undesirable gap between the bottom of the viewport and the footer. In the markup, add a new <div> that wraps the header and main container elements.

<div class="wrap">
  <div class="main-header">
    <div class="container">
      ...
    </div>
  </div>

  <div class="container">
    ...
  </div>
</div> <!-- /.wrap -->
Use calc() to write a mathematical expression that will subtract the footer height from the viewport's total height.

.wrap {
  min-height: calc(100vh - 89px);
}
Related videos

The CSS calc() Function - workshop

Positioning Elements Side-By-Side with Inline Display7:29
with Guil Hernandez
In this video, you'll learn how changing element display values from block to inline affects surrounding elements and the space they take up on a page. For instance, you can make list items, which normally appear stacked on top of each other, appear side by side to form a navigation bar.

Resources

MDN - display

Video review

Inline elements, like images, links and span tags, do not create line breaks in a layout; they appear on the same line as the content and elements beside them.
Block-level elements, like divs, paragraphs and headings, stack on top of each other and expand to fill their parent.
The browser does not apply width and height properties, or top and bottom margin settings to inline elements.
An inline element will only accept left/right margins and any padding value.

How Floats Work 1:31
with Guil Hernandez
Floats are similar to the inline-block method you learned in the previous section. You can layout elements side by side to create horizontal navigation menus and columns. The biggest difference between floats and inline-block is that floated elements are taken out of the normal document flow and content flows, or wraps, alongside them.

CSS Floats 101 - A List Apart
http://alistapart.com/article/css-floats-101
MDN - float
Video review

By default, browsers display elements in the order they appear in the HTML source code. This order is called the normal document flow.
Elements in the normal document flow are either block or inline; they appear stacked on top of each other or on the same line as the content and elements beside them.
When you apply a float to an element, the element gets taken out of the normal document flow and shifted to the left or right side of its container.
Any content next to the float flows -- or wraps -- around its left or right side.
Related videos

CSS Basics - Floats

Creating a Horizontal Navigation with Floats 5:07
with Guil Hernandez
Besides wrapping text around images, you can use floats to create entire web layouts. For example, you can float the links in a navigation, or content columns in a container.

MDN - float
Nine rules for float behavior
https://www.w3.org/TR/CSS21/visuren.html#float-position

Video review

With floats, we don't have to worry about the the extra whitespace that can appear when using inline or inline-block display.
Floated elements will sit adjacent to each other regardless of the HTML whitespace between them.
If a block-level element contains floated elements, its height collapses.
Related videos

CSS Basics - Floats

Clearing and Containing Floats 6:40
with Guil Hernandez
The floats in the header caused a common, undesirable layout behavior you'll likely face when using floats. When you float elements, the parent container no longer honors the space of the floated elements inside it, so its height collapses.

Float clearfix
http://nicolasgallagher.com/micro-clearfix-hack/

The clear property
The overflow property
::after pseudo-element
display: table;
Video review

A parent container with floated elements may not always collapse to no height at all; if the container includes a padding or height value, it'll have some visible height.
There are a two common ways to force a collapsed element to expand to the full height of its floated child elements:
Setting the parent element's overflow value to hidden or auto
Clearing the floats with a CSS pseudo-element
A clearfix fixes the collapsing issue by forcing a container to expand and contain the floated elements.

Related videos

CSS Basics - Clearing Floats
Pseudo-element Selectors

The Float Challenge 1:22
with Guil Hernandez
You've learned a lot about CSS floats in this section of course. Now it's your turn to lay out parts of the design using floats.
Teacher's Notes

MDN - float
https://developer.mozilla.org/en-US/docs/Web/CSS/float
Float clearfix
http://nicolasgallagher.com/micro-clearfix-hack/
Nine rules for float behavior
https://www.w3.org/TR/CSS21/visuren.html#float-position

Video review

Give each column inside the main container a fluid width.
The 'primary' column can be 60% wide and the 'secondary' column can be 40% -- it's up to you.
Use floats to display both columns horizontally so that they appear on the same line.
You're building the column layout using a mobile first approach, so the horizontal layout should apply to large screens only.
Be aware of collapsing containers caused by floats.
Related videos

CSS Basics - Floats
CSS Basics - Clearing Floats
Column layout tips

To add a left gutter to all but the first column, you can use this:

.col + .col {
  padding-left: 1em;
}
To remove the right gutter from the column closest to the right edge of the page, use :last-child

.col:last-child {
  padding-right: 0;
}
Bringing it all together
This snippet floats all columns left and applies a right gutter. It applies a left gutter to all but the first column, so the first column will be flush with the left margin of the page. Then it removes the right gutter from last column, so that it's flush with the right margin of the page.

.col {
  float: left;
  padding-right: 1em;
}

.col + .col {
  padding-left: 1em;
}

.col:last-child {
  padding-right: 0;
}
You can also apply a gutter using just a left padding or margin value, like this:

.col {
  float: left;
}

.col + .col {
  padding-left: 1.5em;
}
