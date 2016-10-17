Introducing Asynchronous JavaScript and XML, or AJAX. How it works, who uses it and why you should learn it.

Request and Response
Browsers (Clients) Send Requests to Servers (Response)

XHR Object or XMLHttpRequestObject

A Asynchronous (sent without waiting)
J JavaScript
A and
X XML (extensible markup language)

4 Steps

1. Create a XMLHTTP Request object
2. Define a callback function
3. Open a Request
4. Send the Request

1.
XHR Object
required for each AJAX requests
var xhr = new XMLHttpRequest();

2. create callback function (the heart of your AJAX function)

3.
event : something that happens in the web browser

Key Points

There are two common methods for sending HTTP requests:

GET. Used for most requests. Browser uses the GET method whenever it requests a new web page, CSS file, image, and so on. Use GET when you want to "get" something from the server.
POST. Used frequently with web forms to send data to store in a database. Use POST when sending data that will store, delete or update information from a database.
