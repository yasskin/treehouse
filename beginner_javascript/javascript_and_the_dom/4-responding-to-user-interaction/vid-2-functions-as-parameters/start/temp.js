// function declaration

function say(something) {
  console.log(something);
}

function exec(func, arg) {
  func(arg);
}

// now it's an expression

exec(function say(something) {
  console.log(something);
}, "Hi, there");

// anonymous function

exec((something) => {
  console.log(something);
}, 'Greetings, everyone!');



window.setTimeout((something) => {
  console.log(something);
}, 3000, 'Greetings, everyone!');
