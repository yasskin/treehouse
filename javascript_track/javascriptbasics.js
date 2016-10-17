// JavaScript Basics

/*
The random number guessing game
Generates a number between 1 and 6
and gives a player two attempts to guess the number
*/
var correctGuess = false;
var randomNumber = Math.floor(Math.random() * 6) + 1;
var guess = prompt ("I am thinking of a number between 1 and 6. What is it?");
if (parseInt(guess) === randomNumber) {
  document.write("<p>You got it right</p>");
} else


var answer = prompt("What language is a gem?");
if ( answer.toUpperCase() === 'RUBY') {
  document.write("<p>That's right!</p>");
} else {
  document.write("<p>Try again</p>")
}

/*
longer comments

*/
