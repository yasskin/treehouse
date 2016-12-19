Overview of Tables 2:26
with Nick Pettit

It's very common for tables to be populated with information from a database. We're going to build a static table in plain HTML without a database, but for the sake of learning, we're going to imagine that we have a company with a few employees. Each employee will have an email address and a job role.

Resources

Throughout these videos, we'll be learning about many HTML table elements. If you'd like to learn more, be sure to read the notes section of each video to review vocabulary, code, and links to documentation. For starters, here's the Mozilla Developer Network documentation for the <table> element.
https://developer.mozilla.org/en-US/docs/Web/HTML/Element/table

The Table Head and Body Elements 3:06

The table head element is a completely different element from the table header cell element. In combination with the table body element, the table will gain additional structure.

<thead> - The table head element (not to be confused with the table header cell element) defines a set of rows that make up the header of a table.
<tbody> - The table body element defines one or more rows that make up the primary contents (or "body") of a table.

The Table Foot Element 5:08

In general a table footer element should contain a summary of the table. This might be some final cells that are sums, totals, and averages for each column. A table footer might also just contain some meta information about the table itself, such as how frequently the table is updated, copyright information, or perhaps the source of the data within the table.

<tfoot> - The table foot element contains a summary of the table. This might be totals for columns of numerical data or meta information about the source of data.
Resources

MDN <tfoot> Documentation

https://developer.mozilla.org/en-US/docs/Web/HTML/Element/tfoot

More Table Tips 2:04

Tables should only be used for displaying tabular data and not for positioning images and text, because that can now be done with CSS.

If you'd like to learn more about tables, be sure to read the Mozilla Developer Network documentation for the <table> element and other elements that relate to tables.