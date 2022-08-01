//: [Previous](@previous)

/*:
 # Introduction

 Here, I'll cover a few odds and ends before you begin your journey. These are things that tripped me up when I was starting out and it was helpful to have some examples laying around.

 The purpose of this playground is to have a reference with live code you can refer to as you get started. You'll have a lot of terms thrown at you that may seem foreign at first, but if you stick with it, it will all begin to make sense.

 ## Organization of this Playground

 This Playground has several pages that you can refer to. They're listed in order from top to bottom.

 - Constants & Variables
 - Types
 - Enumerations
 - Methods
 - Structures and Classes
 - Protocols

 ## Naming Conventions

 Every language has conventions, which are adopted by people who use the language. [These are the conventions](https://www.swift.org/documentation/api-design-guidelines/) adopted by Swift.org. Don't waste time memorizing them, but we aware of them.

 Stuff like indentation is taken care of by Xcode, so you don't need to worry about that.

 ### CamelCase

 - `UpperCamelCase` is used to name types and protocols
 - `lowerCamelCase` is used to name everything else

 In the example below, we see a declaration of a `PersonStruct` type, so we use `UpperCamelCase` to name it.

 The properties fall under "everything else", so `firstName` and `lastName` are named in `lowerCamelCase`
 ```swift
 struct PersonStruct {
     let firstName: String
     let lastName: String
 }
 ```

### snake_case

 While you're in Swift, you'll likely stick to naming things in either `UpperCamelCase` or `lowerCamelCase`, however when you start working with APIs, you'll likely bump into `snake_case`. You might look at code written in another language and the capitalization rules might seem different. Snake case typically used in Ruby and Python, which are scripting languages that often show up in project folders for Swift repos.

 */


//: [Next](@next)
