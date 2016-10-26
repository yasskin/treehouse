JSON
JavaScript Object Notation

can use object or array notation

property value or key value pairs

{
    "name" : "Noah",
    "phone" : "541-678-0529"
}

valid JSON requires double quotes around keys and values.

    [
        {
            "name" : "Aimee",
            "inoffice" : true
        },
        {
            "name" : "Amit",
            "inoffice" : false
        }
    ]

JSONlint - JSON validator

JSON is just a plain text string to a browser.
    Parsing changes the string into JavaScript
JSON.parse takes a string a converts it into a javascript object.


    var xhr = new XMLHttpRequest();
xhr.onreadystatechange = function() {
    if(xhr.readystate === 4) {
        var employees = JSON.parse(xhr.responseText);
        var statusHTML = '<ul class="bulleted">';
        for (var i-0; i<employees.length; i+= 1) {
            statusHTML += '<li class="in">';
        } else {
            statusHTML += '<li class="out">';
        }
        statusHTML += employees[1].name
        statusHTML += '</li>'
    }
    statusHTML += '</ul>';
    document.getElementById('employeeList').
};
xhr.open('GET', "data/employees.json");

xhr.send();


