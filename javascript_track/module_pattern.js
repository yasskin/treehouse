The Module Pattern in JavaScript16:53
with Huston Hedinger
Have you ever wondered how some of those huge JavaScript projects out there are getting built? This is done using "Module Patterns" The awesome news for you is that by learning a couple of these patterns, you can make your apps easier to build and to maintain!

Follow along with the code from github: https://github.com/hdngr/javascript-module-workshop

    Minification: http://alistapart.com/article/javascript-minification-part-II

        Using the !, +, -, ~ sign before function: http://stackoverflow.com/questions/3755606/what-does-the-exclamation-mark-do-before-the-function

    Why use the ! sign, instead of the parenthesis in AirBnb’s style guide: https://github.com/airbnb/javascript/issues/44#issuecomment-13063933


    <!DOCTYPE HTML!>
    <html>
     <body>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.8.2/underscore.js"></script> <script src="patterns.js"></script>
        </body>
    </html>

    var awesomeNewModule = (function(){
        var exports = {
            foo: 5,
            bar: 10
        };
        exports.helloMars = function() {
            console.log("Hello Mars!");
        };
        exports.goodbye = function() {
            console.log("Goodbye!");
        };
        return exports
    }());

!function(underscore) {
    underscore.someawesomemethod = 'yayy!';
    console.log(underscore.VERSION);
}(_);

