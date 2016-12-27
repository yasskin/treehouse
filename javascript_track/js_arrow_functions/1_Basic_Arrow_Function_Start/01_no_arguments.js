const name = "Andrew";

// function declaration
function sayName() {
    const message = "My name is " + name;
    console.log(message);
}

// function expression
var sayName = function() {
    const message = "My name is " + name;
    console.log(message);
}

sayName();

// new best practice
const sayName = function() {
    const message = "My name is " + name;
    console.log(message);
}

// arrow function
const sayName = () => {
    const message = "My name is " + name;
    console.log(message);
}

const sayBye = () => console.log("Bye " + name);
