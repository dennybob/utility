# C# Notes

## Links
[Microsoft - C# docs](https://docs.microsoft.com/en-us/dotnet/csharp/)  
[Microsoft - desktop apps](https://dotnet.microsoft.com/apps/desktop)  
[Microsoft - .NET tutorials](https://docs.microsoft.com/en-us/dotnet/core/tutorials/)  
[Markdown Guide](https://www.markdownguide.org/basic-syntax/)

## Section-1: Basic Concepts

### Chapter-1: What is C#?

C# ('c' sharp) is an object oriented language the runs on Microsoft's **.NET** framework.  It can be used to write apps and utilities. The .NET framework consists of the **Common Language Runtime (CLR)** and the **.NET Framework Class Library**. The CLR provides core services such as memory management and code accuracy. The class library provides a collection of classes, interfaces and value types that enable a range a programming tasks.

### Chapter-2: Variables

#### <ins>Naming Variables</ins>

Variables must be declared specifying a variable name, called an **identifier**, and preferably a **data type**.
   ```c#
   int age = 45;
   ```
It is good practice to use variable names that are descriptive in order to make code that is easily understood. Rules for naming variables include:
   - Can contain letters, numbers, and underscores.
   - Cannot start with a number.

#### <ins>Variable Data Types</ins>

A data type defines the type information that can be stored in a variable, the amount of memory needed, and the operations that can be performed with the variable. Variables must be declared before assigning a value:
   ```c#
   int myAge;
   myAge = 18;
   ```
or they can be assigned when declared:
   ```c#
   int myAge = 18;
   ```
Built-in data types include:
   - `int` - an integer number
   - `float` - floating point number
   - `double` - double-precision version of float
   - `char` - a single character in **single quotes**
   - `bool` - Boolean values, **true** or **false**
   - `string` - sequence of characters in **double quotes**

### Chapter-3: Your First Program

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
### Chapter-4: Displaying Output

There are two main ways to display **output** to the console. The method `Console.Write()` will print its contents to the console and `Console.WriteLine()` will print its contents with a line terminator.

   ```c#
   int x = 10;
   int y = 20;

   Console.WriteLine("x = {0}, y = {1}", x, y);

   // outputs --> x = 10, y = 20
   ```
As you can see, the placeholder `{0}` in the string is replaces with the value of `x` and `{1}` is replaced with the value of `y`, respectively.  You can use an unlimited number of placeholders.

### Chapter-5: User Input

You can prompt a user to enter data by displaying a message using the `Console.WriteLine()` method, then using the `Console.ReadLine()` method to assign the input to a `string` value. Note that the `Console.ReadLine()` method takes no arguments in the parentheses, and all data collected comes in as a `string`. To overcome this, the data type can be converted using one of the following:
   - `Convert.ToInt32` - bit size integers available (16, 32, 64)
   - `Convert.ToDouble`
   - `Convert.ToBoolean`

This example of user input with conversion prompts the user by asking their age, converts the age from a string to an integer, then displays their age.:
   ```c#
   Console.WriteLine("How old are you?");
   int age = Convert.ToInt32(Console.ReadLine());
   Console.WriteLine("You are {0} years old", age);
   ```

### Chapter-6: Comments

