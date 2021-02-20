# C# Notes

## Links
[Microsoft - C# docs](https://docs.microsoft.com/en-us/dotnet/csharp/)  
[Microsoft - desktop apps](https://dotnet.microsoft.com/apps/desktop)  
[Microsoft - .NET tutorials](https://docs.microsoft.com/en-us/dotnet/core/tutorials/)  
[Markdown Guide](https://www.markdownguide.org/basic-syntax/)

## Basic Concepts

### __What is C#?__

C# ('c' sharp) is an object oriented language the runs on Microsoft's **.NET** framework.  It can be used to write apps and utilities. The .NET framework consists of the **Common Language Runtime (CLR)** and the **.NET Framework Class Library**. The CLR provides core services such as memory management and code accuracy. The class library provides a collection of classes, interfaces and value types that enable a range a programming tasks.

### __Variables__ 

#### <ins>Naming Variables</ins>

Variables must be declared specifying a variable name, called an **identifier**, and preferably a **data type**.

```c#
int age = 45;
```

It is good practice to use variable names that are descriptive in order to make code that is easily understood. Rules for naming variables include:

   - Can contain letters, numbers, and underscores.
   - Cannot start with a number.

#### <ins>Variable Data Types</ins>

A data type defines the type information that can be stored in a variable, the amount of memory needed, and the operations that can be performed with the variable. Variables must be declared before assigning a value...

```c#
int myAge;
myAge = 18;
```

or they can be assigned when declared...

```c#
int myAge = 18;
```

Built-in data types include...

   - `int` - an integer number
   - `float` - floating point number
   - `double` - double-precision version of float
   - `char` - a single character in **single quotes**
   - `bool` - Boolean values, **true** or **false**
   - `string` - sequence of characters in **double quotes**

### __Your First Program__

For learning the fundamentals C#, the first program will be a **console application** which uses a text-only interface. A C# console application must contain a **method** named **Main** (the starting point). Running this program will display *Hello World!* in the console.

> **<ins>Important Note</ins>**: for the purpose of saving space, we will assume from now on that all code is contained in the `Main` method.

```c#
using System;

namespace MyFirstProgram
{
   class Program
   {
      static void Main(string[] args)
      {
         string sayHello = "Hello World!";
         Console.WriteLine(sayHello);
      }
   }
}
```

### __Displaying Output__

There are two main ways to display **output** to the console. The method `Console.Write()` will print its contents to the console and `Console.WriteLine()` will print its contents with a line terminator.

```c#
int x = 10;
int y = 20;

Console.WriteLine("x = {0}, y = {1}", x, y);

// outputs --> x = 10, y = 20
```

As you can see, the placeholder `{0}` in the string is replaces with the value of `x` and `{1}` is replaced with the value of `y`, respectively.  You can use an unlimited number of placeholders.

### __User Input__

You can prompt a user to enter data by displaying a message using the `Console.WriteLine()` method, then using the `Console.ReadLine()` method to assign the input to a `string` value. Note that the `Console.ReadLine()` method takes no arguments in the parentheses, and all data collected comes in as a `string`. To overcome this, the data type can be converted using one of the following.

   - `Convert.ToInt32` - bit size integers available (16, 32, 64)
   - `Convert.ToDouble`
   - `Convert.ToBoolean`

The following example of user input with conversion prompts the user by asking their age, converts the age from a string to an integer, then displays their age.

```c#
Console.WriteLine("How old are you?");
int age = Convert.ToInt32(Console.ReadLine());
Console.WriteLine("You are {0} years old", age);
```

### __Comments__

Comments help explain parts of code and are ignored by the compiler.

```c#
// single line comment

/* Multi-line
   comment
*/
```

### __The `var` Keyword__

Variables are typically **explicitly typed** (`int`, `double`, `string`, etc.) when they are declared.  The `var` keyword declares variables **implicitly typed**. The compiler determines the type based on the expression assigned to it. Implicitly typed variables must be initialized with a value.

```c#
int num1; // explicitly typed variable
num1 = 1;
var num2 = 2; // implicitly typed variable
```

### __Constants__

Constants (or named constants) store a value that cannot be changed after initial assignment.  To declare a constant, use the `const` modifier. Constants must be initialized when declared.

```c#
const double PI = 3.1415927;
```

### __Arithmetic Operators__

An **arithmetic operator** is a symbol that performs mathematical manipulations.  The standard mathematical operators and order of operations apply, including the use of parentheses.

   1) Parentheses __( )__
   2) Multiplicative __*__, __/__, __%__
   3) Additive __+__, __-__
   4) Then, left to right...

 There is an additional operator called **modulus** `%` which returns the remainder of integer division.

```c#
int x = 25 % 7; // returns 4
```

### __Assignment Operators__

As seen in previous examples, the **assignment operator** `=` assigns the value (right) to the variable (left).

There are **compound assignment** operators which perform an operation and assignment in one statement; a kind of short hand.

```c#
x += 2; // equivalent to x = x + 2
x -= 6; // equivalent to x = x - 6
x *= 8; // equivalent to x = x * 8
x /= 5; // equivalent to x = x / 5
x %= 2; // equivalent to x = x % 2
```

### __Increment Operators__

__Increment__ and __decrement__ operators change the value respectively.

```c#
x++; // equivalent to x = x + 1
x--; // equivalent to x = x - 1
```

They can be used in either **prefix** or **postfix** manners, and can *stand alone* or be used in an *assignment*.

   - prefix: increments the value, then evaluated the expression
   - postfix: evaluated the expression, then increments the value

```c#
++x; // prefix increment
--x; // prefix decrement
x++; // postfix increment
x--; // postifx increment
```

Examples of usage with multiple variables...

```c#
int x = 3;
int y = ++x;
// x is 4, y is 4
```

```c#
int x = 3;
int y = x++;
// x is 4, y is 3
```

## Conditionals & Loops

### __The `if`-`else` Statement__

The `if` statement executes code when the condition evaluates true. Multiple `else if` clauses can follow an `if` statement and likewise execute code when evaluated true. The `else` clause is optional and is run only if all of the previous conditions evaluate as false. Multiple `if` statements can be nested within an `if` statement.

```c#
if (x > y) {
   Console.WriteLine("x is greater than y");
}
else if (x == y) {
   Console.WriteLine("x is y");
   }
else {
   Console.WriteLine("x is less than y");
}
```

> [SharpLab - Example of if, else if, and else](https://sharplab.io/#v2:EYLgHgbALANALiATgVwHYwCYgNQB8ACATAIwCwAUPgMwAERdxA7DQN4U0c0D0AVO5zR40AomACGAWwAOAGwCmNAPYAzGgEtlMGnJkBnBRq1jUGbXrn9OPLpbqFCrWwKec1qODTA0AvDWIBuFw43DwBPHxpCQPIBZxjY4NUACi8APhpQgEpHeISBfGIATiSAIi81XRoAc0Q5MTg5RBo4AAtjDJLM6LyaAF8gs311ZK9vXyycnvyi0vLK0M7uvP7c2J0htlWeguKy9Ur5XUrW9oWugZWBFd6gA) 

### __The `switch` Statement__

The `switch` statement provides a structured way to test a variable against many conditions. Each condition is called a `case`, and each case uses the `break` keyword to exit the case. The optional `default` case is executed when none of the previous cases match.

```c#
int age = 65;
switch (age) {
   case 16:
      Console.WriteLine("You can drive at {0} years old.", age);
      break;
   case 18:
      Console.WriteLine("You can vote at {0} years old.", age);
      break;
   case 21:
      Console.WriteLine("You can drink at {0} years old.", age);
      break;
   default:
      Console.WriteLine("You are {0} years old", age):
      break;
}
```

> [SharpLab - Example of switch](https://sharplab.io/#v2:EYLgHgbALANALiATgVwHYwCYgNQB8ACATAIwCwAUPgMwAERdxA7DQN4U0c0D0AVO5zR40AomACGAWwAOAGwCmNAPYAzGgGcA7gEs4AYwAW/Tjy5G6hQqzMCtqODTEBzBQF4aUAKwBua5006DGgAKJzkASityAWiOXTE1BWIIEF8YjnxiAE4ggCIATUVkGjjUGgxELQA3BTF7FgAGAF8aAE85MUQ1JRkMADocmAdnMJ8otJjgRHaAa1HxzjiEmmIADhSx+c4M7PzC4rFSysU4Grqm1vbO7r6BofC5zc5JmYf5xYUSdcetrNyCopKZQqqGmDjOzTaHS6ih6/UGoRGqTSzzEsyRAgwcmUYmQMgQ6Oi2z+ew6CgaEMu0J6twRr0eKLRG2ijTMLPIjSAA) 

### __The `while` Loop__

A `while` loop will continually execute the blocks of code in the **loop body** while a given condition is evaluated as **true**. Without a statement that eventually evaluates as **false**, the loop with continue indefinitely. The **compound arithmetic** operators can be used to manipulate the number of times a loop runs.

```c#
int num = 1;
while (num < 10) {
   Console.WriteLine(num);
   num+=2;
}
```

> [SharpLab - Example of while](https://sharplab.io/#v2:EYLgHgbALANALiATgVwHYwCYgNQB8ACATAIwCwAUPgMwAERdxA7DQN4U0c0D0AVO5zR40AomACGAWwAOAGwCmNAPYAzGgHcAFgEt5/Tjy566hQqyMCtqODVTIJNALw1iAbnOdNOhQApb9gDzOAAwAlGbkApEc+MQAnL52IW4RUQJ+2A6Eyak0AL5G+eS5QA=)

### __The `for` Loop__

The `for` statement also executes the blocks of code in the loop body while the given condition evaluates as **true**. It counts loops using an **initializer**, **condition**, and **iterator** . The variable declared for iteration (`i` in the example) is not global.

```c#
for (int i=1; i<=10; i++) {
   Console.WriteLine(i);
}
```

> [SharpLab - Example of for](https://sharplab.io/#v2:EYLgHgbALANALiATgVwHYwCYgNQB8ACATAIwCwAUPgMwAERdxA7DQN4U0c0D0AVO5zR40AomACGAWwAOAGwCmNAPYAzGssWJ+nHly11ChVnoHrENABQBLVHBqWAvMQDcdgDyOADC8vZsASiNyTnxiAE4rPycKAF89WPJooA=)

### __The `do`-`while` Loop__


### __The `break` and `continue` Keywords__


### __Logical Operators__


### __The Conditional Operator__

## Methods

> [SharpLab - Example of method overloading](https://sharplab.io/#v2:EYLgHgbALANALiATgVwHYwCYgNQB8ACATAIwCwAUPgMwAERdxA7DQN4U0c0D0AVO5zR40AomACGAWwAOAGwCmNAPYAzGhLlwAFooxKAbnMQzFYjAEtUAc36ceXG3UKFWDgQAVEFuAApixAJQA3K6cHl7eUAB0xFRBIRxhqD4ARPjEAAw0AGQ0XiA0yTA0jJEArIxx5AIAvg7UDBB0UDSJPl40Yv4uVQKcaQCc3sl5BTTYHZU1dbRpjfjNrd4YisjA8hPdvX3Eg8nLq/L5yWMTwT0cted0M8RzC55J3mmZMmLAcjJF+2sKnZtbDEGr3eMhOnTOU3I1SAA) 