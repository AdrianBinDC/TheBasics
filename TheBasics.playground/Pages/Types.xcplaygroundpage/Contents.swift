//: [Previous](@previous)

/*:
 # Types
 Swift is a "strongly typed" programming language, meaning declarations of variables and constants must specify a type. Swift also does "type inference", which will "guess" what type something is based on things that it "sees" in the declaration.

 The basic "types" you'll deal with starting out are the following:
 - `String`: A string is what most non-developers would say is text.
 - `Int`: An `Int` is a whole number with no decimal on it.
 - `Float`: A `Float` is a floating point number, or decimal
 - `Double`: A `Double` is a type of floating point number, but it's double the memory width of a `Float`. Doubles are used for things which demand high precision like geographic latitude and longitude.
 - `Bool`: A `Bool` is a value of `true` or `false`.

 */
// These are examples of the different types discussed above
let myString = "this is a string"
let myFloat: Float = 3.00
let pi = Double.pi
let myBool = true

/*:
 As discussed above, Swift makes use of type inference, where it can "figure out" what something's type is.

 ```swift
 let myString = "this is a string" // Swift sees the quote and figures out it's a string
 let myFloat: Float = 3.00 // Swift sees the decimal and guesses it's a Double, so we have to add the :Float so it gets seen as a float
 let pi = Double.pi // Swift infers this is a Double b/c I referenced the value of pi
 let myBool = true // Swift sees true and says "this is a Bool"
 ```
 */

// this is an array declaration
// in Swift (and a few other languages), [] denotes an array, or a list
// since they're not all the same Types, the compiler will want to know what to expect, so we tell it it's Any.
// the elements in this array are declared above between lines 16 and 19
// let myName: [The type of array] = [your array with elements in it]
let myArray: [Any] = [myString, myFloat, pi, myBool]

example(of: "string interpolation") {
    // With a \(ADD STUFF HERE)
    // in the line below, we're taking a string wrapped in ""s and putting some code inside to read the array to see how many elements it has.
    // individual things inside an array are called elements
    print("There are \(myArray.count) elements in myArray")
}

/*:
 Below are several of ways we can go through, or loop through the array to do stuff to elements within the array:
 */

print("🚨 The following are different examples of loops...they all do the same thing, just a different syntax")
example(of: "for-in loop") {
    print("🟩 about to enter the for-in loop...")
    for element in myArray {
        print("🔁 \(type(of: element))")
    }
    print("🏁 exiting the loop...")
}

example(of: "forEach loop with labeled arguments") {
    print("🟩 about to enter the forEach loop...")
    myArray.forEach { element in
        print("🔁 \(type(of: element))")
    }
    print("🏁 exiting the loop...")
}
example(of: "forEach loop with shorthand argument name (SAN)") {
    // instead of using "element in", we just use the shorthand to call it "$0"
    // the nerd argot for this is "shorthand argument name", or SAN
    // if you had multiple arguments, the first is $0, the second is $1, the third is $0, and so on
    // in programming, numbers generally start at 0, not 1
    print("🟩 about to enter the forEach loop...")
    myArray.forEach {
        print("🔁 \(type(of: $0))")
    }
    print("🏁 exiting the loop...")
}

//: [Next](@next)
