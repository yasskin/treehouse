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
