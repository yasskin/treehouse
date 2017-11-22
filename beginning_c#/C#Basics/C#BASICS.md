# C# Basics

# Introduction 3:57
## with Jeremy McLain

## In this video we'll learn what C# is used for and discuss some tips for getting the most out of this course. We'll also get our first look at the project we'll be working on.

# Program Structure5:26
## with Jeremy McLain

## We'll go over the basic structure of a program and learn about classes and methods.

### Method: System.Console.ReadLine();
### Method: Namespace.Class.Method()

# Namespace allows us to make multiple classes with the same name.

namespace: Treehouse.FitnessFrog

* Console / Terminal on Windows is PowerShell ; Command Prompt , Mac Terminal, Windows PowerShell
* If a file contains only one class, typically you'll want to name the file the same as the class
* C# has .cs
* Classes often have multiple methods.
* All code is contained in a class.
* Each class usually has its own file
* Inside the class is a Method
* Methods have four Parts
1. Name - the name of the method
2. Body - contains the instructions
3. Parameters - what is passed into the method
4. The Return Type - the type of information the Method will return

* C# looks for a method named Main(). The first method that is called in the program.
* Keywords - special names reserved for the program https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/keywords/index

Preparation and Planning 3:46
with Jeremy McLain
We'll discuss The Four P's of Problem Solving.

Four P's of Problem Solving

1. Prepare - This is where we understand and diagnose the problem.
2. Plan - This is where we organize everything before acting.
3. Perform - We simply put the plan into action.
4. Perfect - This is when we check to see if what we made has solved the problem and consider how to make it better. We can use the Four P's again to make improvements.

Data Types in C#

* int - integer (number w/o decimal component)
* string - string
* bool - boolean
* double - numbers with decimal points

* break; exits a Loop
* continue; runs the loop again

Built-in C# Types

Mixing integers and doubles in arithmetic operations:

Left Side of Operator	| Right Side of Operator	| Message
int	                  | double	|double
int	                  | int	    | int (beware of truncation!)
double	              | int	    | double

# Start Coding 5:59
## with Jeremy McLain

## In this video we'll learn about strings and the .NET framework. We'll use this knowledge to print some text to the screen. We'll also compile and run our program for the first time.

Arithmetic Order of Operations:

() Inner most parenthesis first and from left to right

/ * % From left to right

+ - From left to right


Start REPL: csharp

Quit REPL: quit

8 * 7 + 8 % 5 + 6 / 2
56 + 3 + 3 = 62

8 * (7 + 8) % 5 + 6/2
8 * 15 % 5 + 3
120 % 5 + 3 = 3


24


## Code:

Clear, compile, and run:

clear && mcs Program.cs && mono Program.exe

Start REPL: csharp

Quit REPL: quit

Code:

```
using System;

namespace Treehouse.FitnessFrog
{
    class Program
    {
        static void Main()
        {
            int runningTotal = 0;

            // Prompt user for minutes exercised
            Console.Write("Enter how many minutes you exercised: ");
            string entry = Console.ReadLine();        

            // Add minutes exercised to total

            // Display total minutes exercised to the screen
            Console.WriteLine("You've entered " + entry + " minutes.");

            // Repeat until user quits
        }
    }
}
```

To compile the program with additional debugging information, use this command instead:
```
mcs -debug Program.cs
```
This creates a file called Program.exe.mdb in addition to Program.exe. The file contains additional information for the debugger to use.

To run the program with the debugger, run this command:
```
mono --debug Program.exe
```
Now error messages for exceptions will contain more detailed information such as the exact line of code that threw the exception.


# REPL 2:42
## with Jeremy McLain

### We'll learn another tool called the Mono C# REPL.

* Terminal > $ csharp

* Read Evaluate Print Loop

* To compile: mcs Program.cs

* To run: mono Program.exe

# "try" Code and "catch" Exceptions4:47
## with Jeremy McLain

### We'll learn how to handle exceptions using the *try / catch* construct.

Using Treehouse Workspaces Workshop

Clear, compile, and run:

clear && mcs Program.cs && mono Program.exe

Start REPL: csharp

Quit REPL: quit



Practice Projects

Averager

Repeatedly prompt the user for numbers. Add all of the numbers together. When the user types in “done”, print the average of all of the numbers by dividing the total by the number of numbers entered.

treehouse:~/workspace$ mcs Program.cs && mono Program.exe
Enter a number or type "done" to see the average: 5.5
Enter a number or type "done" to see the average: bogus
That is not valid input.
Enter a number or type "done" to see the average: 4.2
Enter a number or type "done" to see the average: 99
Enter a number or type "done" to see the average: done
Average: 36.2333333333333
treehouse:~/workspace


Interactive Quiz

Write an interactive quiz. It should ask the user three multiple-choice or true/false questions about something. It must keep track of how many they get wrong, and print out a "score" at the end.


Arithmetic Calculator

Create a calculator that does one arithmetic operation at a time and prints the result to the screen.


Prompt the user for a number.
Prompt the user for an operation (+ - / \*)
Prompt the user for another number.
Perform the operation.
Print the result to the screen.
Repeat until the user types in “quit” at any of the prompts.
Extra Credit: Add the power operator using the ^ symbol. You can calculate a number raised to a power using the Math.Pow method.


Math Function Calculator

Prompt the user for a math function such as sine, cosine, tangent, square root, logarithm, etc. Then prompt the user for the function's parameter. Perform the function and print the result back to the screen.

Use .NET’s Math class to do perform the math for you.
