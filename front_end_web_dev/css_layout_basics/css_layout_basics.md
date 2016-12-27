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
