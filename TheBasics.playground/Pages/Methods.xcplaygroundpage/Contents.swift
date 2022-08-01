//: [Previous](@previous)

/*:
 # Methods

 Methods can be used to do things. They're often called functions, too. Methods and functions are the same thing in Swift.

 Methods specify a set of instructions to execute if they're called. A declared method won't do anything unless it's called.

 > This is meant as a cheat sheet to refer to as you're learning. It's not all encompassing, but it's got most of what you'll commonly bump into.

 ## No parameters, no return value
 Below is a method declaration. It has no parameters and does not return anything. It just does stuff.

 > Methods typically start with a verb and end with a noun. We want to describe that it's doing and it should be intuitively descriptive.

 */

func printTongueTwister() {
    let tongueTwister = "How much wood could a woodchuck chuck if a woodchuck could chuck wood?"
    print(tongueTwister)
}

/*:
 Below, we'll call the method by typing `printTongueTwister()`. Press ▶️ to and it'll print in the console.
 */

example(of: "calling a method that does not return anything") {
    printTongueTwister()
}

/*:
 ## Method that returns a value

 Below, we have `getTongueTwister()` defined. The `-> String` before the opening `{` tells us this method returns a String value.
 */

func getTongueTwister() -> String {
    return "How much wood could a woodchuck chuck if a woodchuck could chuck wood?"
}

/*:
 The declaration won't do anything until it's called. Uncomment the code below to call it. We've got a constant called tongueTwister defined and it's equal to whatever `getTongueTwister()` returns, which in this case is a `String`. On the line below, we print `tongueTwister`
 */

example(of: "a method that returns a value") {
    // this method has a "-> String" at the end, so we know it returns a String
    // we assign tongueTwister to be the return value of getTongueTwister() here...
    let tongueTwister = getTongueTwister()
    // and then we print out the value of tongueTwister
    print(tongueTwister)
}

/*:
 ## Method that takes a parameter

 From the prior lesson, we're going to use an `enum` value as a parameter on a method with no return value. The `enum` below defines a `JokeType`, which we'll use as a parameter to pass in a method.
 */
// We define an enumeration here...
enum JokeType {
    case dad
    case knockKnock
    case mom
}

// then we write a method that takes a parameter here...
func print(joke: JokeType) {
    switch joke {
    case .dad:
        print("Singing in the shower is fun until you get soap in your mouth. Then it's a soap opera.")
    case .knockKnock:
        print("- Knock Knock\n- Who's there?\n- Nobel\n- Nobel who?\n- Nobel...that's why I knocked.")
    case .mom:
        print("Yo mama's so fat, when she fell I didn't laugh, but the sidewalk cracked up.")
    }
}

example(of: "a method that takes a parameter") {
    print(joke: .mom)
}

/*:
 > Try changing the joke parameter to something else like `.dad` or `.knockKnock` and pressing ▶️
 */

/*: ## Methods that take a closure as a parameter

 **Closures** are self-contained blocks of functionality that can be passed around and used in your code. When you declare them, surround them with curly braces {}. When you call them, add () at the end
 */

example(of: "method that takes a closure as a parameter") {
    // we declare a method here with a closure as a parameter
    func doSomething(closure: ()->()) {
        // it'll whatever it's told
        print("🟩 do stuff")
        print("then, we execute the closure that's passed in as a parameter below")
        // closure() is a reference to the parameter above
        closure() // the closure is a block of functionality that can be passed around in code
    }

    // this is a closure
    // by itself, it won't do anything...you've gotta call it somewhere, which we'll do below
    // note the curly braces on other stuff here...
    let otherStuff = {
        print("🏁 do other stuff")
    }

    // here, we're calling the method above
    doSomething {
        // otherStuff, declared above, gets passed into doSomething(closure:)
        // but when we call it, we put () after it
        otherStuff()
    }

    print() // add a blank line
    print("Now, we're going to call the same method a slightly different way.")
    print()

    doSomething(closure: {
        // this is an alternate syntax the compiler gives us. instead of passing otherStuff in with the parentheses at the end, we can just dump in raw code and it'll be treated as a closure.
        print("🏁 the quick brown fox jumped over the lazy dog")
    })
}
//: [Next](@next)
