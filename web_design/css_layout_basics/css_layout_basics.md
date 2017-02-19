Column Layout with Media Queries 4:33
with Guil Hernandez

In this video, you'll learn to display the columns side by side in medium and large screens, using floats.

Column layout tips

To add a left gutter to all but the first column, you can use this:
```
.col + .col {
  padding-left: 1em;
}
```
To remove the right gutter from the column closest to the right edge of the page, use :last-child
```
.col:last-child {
  padding-right: 0;
}
```
Bringing it all together
This snippet floats all columns left and applies a right gutter. It applies a left gutter to all but the first column, so the first column will be flush with the left margin of the page. Then it removes the right gutter from last column, so that it's flush with the right margin of the page.
```
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
```

You can also apply a gutter using just a left padding or margin value, like this:
```
.col {
  float: left;
}

.col + .col {
  padding-left: 1.5em;
}
```
====

How Absolute Positioning Works 5:36

The CSS position property gives you precise control over your page layout. CSS positioning makes it easy to place elements, like a menu or an icon, anywhere on the page. This video covers a simple example of how absolute positioning works.

MDN - position
https://developer.mozilla.org/en-US/docs/Web/CSS/position
CSS Positioning 101 - A List Apart
https://alistapart.com/article/css-positioning-101
CSS Tricks - position
https://css-tricks.com/almanac/properties/p/position/
Positioning offsets

top
https://developer.mozilla.org/en-US/docs/Web/CSS/top
right
bottom
left

Elements with absolute positioning are neither affected by or do not affect other elements in the normal flow of the page.
They are like layers in Photoshop or Illustrator; you're free to place them anywhere you wish on the page.
Positioned elements rely on you telling the browser where to place them, using values called positioning offsets, for the element's top, right, bottom or left position.
When you use absolute positioning, you place the absolutely positioned elements in relation to a parent container; the parent container is the positioning context.
You can change the positioning context to other containing elements; this lets us position elements precisely where we want them.

=====
Positioning Elements Relative to Other Elements

Absolute positioning has certain limitations by itself because the positioning is often in relation to the browser viewport. Sometimes you want to place an element in relation to another element and even have it stick with that element if it moves in the design. That's when relative positioning comes in handy.

Absolute and relative positioning work hand in hand.

An element with relative positioning gives you the control to absolutely position elements anywhere inside it.

An element with absolute positioning is always relative to the first parent that has a relative position.

If no parent element has a relative position, the browser viewport is the positioning context by default.

Create an Image Caption with Absolute Positioning 5:38

Learn to use CSS positioning to place a caption and icon over the "Best City Guide" featured image.

Video review

When you position elements with offset values, a negative offset value moves the element in the opposite direction.

Instead of moving the positioned element away from the top, right, bottom or left edges of its relative container, a negative value it moves it towards the top, right, bottom or left edges.
It's best to practice using different positioning offsets and relative containers to see how it affects your layout.

Fixed Positioning 4:34

Fixed positioning is a form of absolute positioning that positions elements in relation to the browser window instead of its containing element. In this video, you'll learn how to add a fixed navigation to your website.

Video review

Unlike absolute positioning, an element with fixed positioning stays fixed to one spot on the page, regardless of the size of the browser window.
Fixed headers and navigation bars are common in web design. For example, the navigation bar on Twitter.

Fixed positioning is always relative to the browser's viewport. Like absolute positioning, you determine the fixed spot using offset values.
When you use relative, absolute or fixed positioning on elements, you may end up with several elements occupying the same space. This can make elements overlap or completely cover up other elements from view.
Related videos

Box Shadows - CSS Basics
https://teamtreehouse.com/library/css-basics/designing-with-the-latest-features/box-shadows

How Z-index Works 5:41

When you use relative, absolute or fixed positioning on elements, you may end up with several elements occupying the same space. This can make elements overlap or completely cover up other elements from view. In this video, you'll learn to use the z-index property to determine which elements display above or below other elements.

Fork this workspace to view the z-index demo

MDN - z-index
https://developer.mozilla.org/en-US/docs/Web/CSS/z-index
MDN - The Stacking Context
https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Positioning/Understanding_z_index/The_stacking_context
What No One Told You About Z-Index
https://philipwalton.com/articles/what-no-one-told-you-about-z-index/
CSS Tricks - z-index
https://css-tricks.com/almanac/properties/z/z-index/

Video review

Positioned elements follow a stacking order that determines which elements display above or below other elements.
By default, the stacking order of positioned elements is the order they appear in the source code.
Elements appearing later in the code sit on top on elements appearing earlier in the code.
The z-index property is directly related to stacking order and it's what prevents elements from overlapping other elements.
An element with a higher z-index value overlaps an element with a lower z-index value.
Positioned elements have a z-index of 0 by default.
z-index works only on elements with a position property set to absolute, fixed, or relative.
If you set a z-index on an element with no position, it will do nothing.
Stacking contexts

When you give a positioned element a z-index, you establish a new stacking context for any descendants -- or children -- of that element. It's possible to have a higher z-index element that's underneath another element with a lower z-index. Learn more about stacking contexts here.
