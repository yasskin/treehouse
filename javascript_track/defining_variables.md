Declaring Variables in JavaScript 1:20
with Andrew Chalkley

Let's review the original way to declare a variable and how that differs with the modern let and const keywords.

ES2015 introduced const and let, two new keywords

var message = "Hello";
const pi = 3.14159;
let score = 0;

Using the keyword `const` to create variables have a number of benefits including the ability to prevent the value from being reassigned.

variable does not change.

const days = ["Monday"];
const person = {first_name: "Imogen"}

days.push("Tuesday")

const does not prevent arrays and object from being modified, just from being overwritten.

let
let has block level scoping
let is useful in a for loop

summary
const is first option. used for values you never want reassigning
let keyword. great substitute is used for values you want to reassigningvar keyword usage should be avoided

const + let - stop using var
