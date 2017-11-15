# Responsive Layouts : 47-minute CSS Course

## About this Course

* Responsive web design is a collection of techniques for building websites that work on multiple screen sizes. In these lessons, we're going to use the foundational principles of responsive design as a framework for thinking about page layout. By the end, you should have a better understanding of how to approach common decisions in responsive design.

## What you'll learn

1. Responsive design theory
2. Media queries
3. Breakpoints
4. Page layout
5. Responsive Theory

* In general, responsive design consists of fluid grids, fluid images, and media queries. By this point, you should have already done some responsive design, but understanding the origins and foundational principles will help you step into more advanced concepts.  

## 5 steps

* Course Overview 1:29

* What is Responsive Web Design? 1:27  
  3 questions

  Responsive web design is a collection of techniques for building websites that work on multiple screen sizes. The scope of responsive design sometimes also includes websites that work at different pixel densities, such as traditional screens or high DPI screens.

  Resources

  + A List Apart: Responsive Web Design  
    https://alistapart.com/article/responsive-web-design
  + Treehouse Blog: The 2014 Guide to Responsive Web Design  
    http://blog.teamtreehouse.com/modern-field-guide-responsive-web-design

* Thinking in Relative Units 2:12  
  4 questions
  Extra Credit

  Prior to responsive web design, most web designers thought in terms of print design. Instead of thinking about layout in terms of fixed values, we must think in terms of ratios or percentages.

* If you have an older website that's built using fixed units like pixels, try converting it to relative units, like percentages or ems. Alternatively, you could create a wireframe and then try using percentages to express it using relative units.

## Media Queries

* Media queries are CSS rules that help us include CSS code only when certain conditions are met. These conditions are called media features, and in the case of responsive web design, the media feature most commonly used is width, or more specifically, min-width. However, media queries actually come with many media features, and width is just one of them.

* 5 steps
* Media Query Review 7:17
  4 questions

  Resources

  + MDN Documentation: Media Features  
    https://developer.mozilla.org/en-US/docs/Web/CSS/Media_Queries/Using_media_queries#Media_features
  + Initializr  
    http://www.initializr.com/

* Understanding Breakpoints 2:53

  In responsive web design, you can think of a breakpoint as a width where the current layout no longer works and the layout breaks. If the layout breaks, then it necessitates a media query that adjusts the layout.

* Creating Breakpoints 3:49
  4 questions
  Extra Credit

  Breakpoints define a certain threshold where the layout should change, typically defined by the content (and not by devices).

### Resources

+ Brad Frost: 7 Habits of Highly Effective Media Queries  
  http://bradfrost.com/blog/post/7-habits-of-highly-effective-media-queries/
+ Smashing Magazine: Breakpoints and the Future of Websites  
  https://www.smashingmagazine.com/2014/07/breakpoints-and-the-future-websites/

* Fork the template provided in the Workspaces associated with this course, and then remove all the media queries. Next, try creating your own breakpoints based on the content. Finally, test your breakpoints on any web browsing devices you have available.

## Responsive Patterns

* It's important to consider how different design patterns will translate from one breakpoint to another. Thinking about pieces of atomic design, such as tabs or an image carrousel, is a great way to break down a responsive layout into its component parts.

* Think in terms of atomic units.

* Responsive Design Patterns 2:32

* Flexbox 8:21

  Looking ahead, the future of responsive grids is in flexbox. In this brief overview, we'll learn about the basics of this new collection of CSS properties and values.

  Treehouse: CSS Layout Techniques
  https://teamtreehouse.com/library/css-layout-basics
  MDN Documentation: Flexible Boxes
  https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Flexible_Box_Layout/Using_CSS_flexible_boxes
  CSS-Tricks: A Complete Guide to Flexbox
  https://css-tricks.com/snippets/css/a-guide-to-flexbox/
  caniuse.com: Flexbox Compatibility Table
  http://caniuse.com/#search=flexbox

* Responsive Design Review
  6 questions
  Extra Credit

* Fork the responsive template included in the Workspaces associated with these lessons. Then, try converting the layout to use flexbox instead of floats.
