# HTML Forms
## 157-minute HTML Course

## About this Course

### The web is a two-way communication medium. There’s lots of HTML elements for displaying data and producing output, and conversely, there’s also lots of HTML elements for accepting input. Accepting input from the user means creating web forms. In this course, we’ll learn about all the most important form elements that web professionals use on a daily basis.

## What you'll learn

* Forms
* Input elements
* Select menus
* Radio buttons
* Checkboxes

## Form Basics

### To learn about forms, we’re going to create a simple sign up form for an imaginary web app. Our form won’t actually submit anywhere, since that requires additional server-side code. However, we will learn about all the most important HTML form elements.

## Overview of Forms

## The Form Element

* The first element we’ll learn about is the form element. This special element wraps all the other elements that go inside of our form.

* <form> - The form element wraps a section of the document that contains form controls. The action attribute specifies the web address of a program that processes the information submitted via the form. The method attribute specifies the HTTP method that the browser should use to submit the form, such as POST or GET. Forms cannot be nested inside one another.

## The Input Element

The input element is the most commonly used form element. We can use the input element to make text fields, and much more.

* <input> - The input element is used to create many different types of form controls. The type attribute specifies what kind of form control should be rendered, such as text, email, passwords, and more. The name attribute is submitted with form data so that server-side code can parse the information.

## The Textarea Element

Sometimes a single line of text isn’t enough and a simple input element won’t work. For example, maybe you have a contact form and you need a place for people to type a message. In those cases, it’s best to use a textarea.

* <textarea> - The textarea element accepts multiple lines of text from the user. Most browsers will render the textarea element with a widget to allow for resizing the editing area.


## The Button Element

A form is not complete without a submit button. Once a user has finished filling out a form, they should be able to click a button that sends their data to the web server.

* <button> - Just as the name implies, the button element will render a clickable button. The type attribute specifies whether the button should submit the form data, reset the form, or have no default behavior for use with JavaScript

### Extra Credit

Did you know that the input element has over 30 attributes? The type attribute alone has over 20 values. Try reading the documentation for the <input> element and test some of the other input types.

## Organizing Forms

A form can be created with just a form element and some controls, but it's helpful to the user if the form is organized with labels and fieldset elements.

## The Label Element

Right now, it’s impossible for the user to tell what kind of information they should type into each form field. We can label form controls using the label element.

* <label> - The label element helps to organize forms by assigning some helpful text to a form control. This text helps the user to understand what kind of data they should add to each form field.

Fieldsets and Legends

Sometimes, certain form controls belong together in a logical grouping. Form controls can be grouped together using fieldsets and then labeled using a legend.

* <fieldset> - The fieldset element wraps multiple form elements into common groups. This can help organize a form and make it easier to understand for users.

* <legend> - The legend element is similar to the label element, but instead of labeling a form control, it labels a fieldset. Adding a legend to a fieldset can provide some helpful context for users that are filling out a form.

## Extra Credit

Styling form elements can be slightly more difficult than other types of HTML elements. Try removing some of the default CSS in this project and practice adding your own style to the <label> element, the
<fieldset> element, and the <legend> element.

## Choosing Options

Sometimes when creating a form, it's better for the user to choose from predefined options rather than typing in text. This can be accomplished with select menus, radio buttons, and checkboxes.

## Select Menus

A text input isn't ideal for every situation. The select element can be used in cases where the user should pick from a set of predefined options.

HTML Elements

* <select> - The select element renders a drop-down menu that contains selectable options. This type of form control is ideal for scenarios where the user must choose one option from a preset list of 5 or more choices.
* <option> - The option element represents one of the choices that a user can choose in a select menu. It should always be nested inside of a select element.
* <optgroup> - The optgroup element wraps one or more option elements and helps to create logical groups. The label attribute specifies the text that the optgroup should display above the nested options.
Resources

MDN <select> Documentation
MDN <option> Documentation
MDN <optgroup> Documentation

## Radio Buttons

If the user only needs to choose from 5 or fewer options, then it's better to use radio buttons instead of a select menu.

Remember that in order to group radio buttons together, they must all share the same value for the name attribute.

Resources:

MDN <input> Documentation
https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input

## Checkboxes

Sometimes there might be a group of predefined options where the user can select multiple items. That’s where checkboxes are a better choice than radio buttons or select menus.


## Going Further

We have learned about lots of HTML form elements, but what if you want to learn more? Here’s a few challenges for you.

HTML Forms Review

If you'd like to learn more, be sure to check out the Mozilla Developer Network guide for HTML forms and browse their documentation.
https://developer.mozilla.org/en-US/docs/Learn/HTML/Forms

10 questions
Extra Credit

Check the notes and read
the documentation for HTML forms
. We’ve covered the essentials, but this is a very in-depth topic.
Try adding your own CSS to make this form look the way you want it to look. It's good to practice, because styling form elements can be a little bit more challenging than other HTML elements.
Try to make this form submit somewhere by learning a server-side language such as Ruby, PHP, or Python.
