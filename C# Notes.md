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
   - `bool` - boolean values, **true** or **false**
   - `string` - sequence of characters in **double quotes**

### Chapter-3: Your First Program


