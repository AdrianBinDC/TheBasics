//: [Previous](@previous)
/*: # Useful Array Methods

 As you begin to work with arrays, you should know there are some very useful functions that you can run on them. They are:
 - `map`: Enables you to perform operations on an array and mutate it.
 - `filter`: Enables you to use a predicate to filter contents of an array
 - `reduce`: Enables you to perform a math operation on all elements in a given array.
 */
example(of: "map") {
    // we use map with an anonymous argument ($0) to uppercase every element in the array
    let listOfNames = ["Jack", "Jane", "Joe"].map { $0.uppercased() }
    print(listOfNames)

    let oneToTen = Array(1...10)
    print(oneToTen)
    // Multiply them all by 10
    let multipliedByTen = oneToTen.map { $0 * 10 }
    print(multipliedByTen)
}
/*: ## Filter examples*/
example(of: "filter") {
    let evensAndOdds = Array(1...10)
    // % is called modulo. What it does is divides the number and keeps track of the remainder.
    // an even number divided by 2 has no remainder, which is how we determine if it's even
    // inside the closure on filter, we do a check to see if the anonymous argument ($0) % 2 has a remainder equal by comparison to 0
    let evensOnly = evensAndOdds.filter { $0 % 2 == 0 }
    print(evensOnly)
}
/*: ## Reduce examples*/
example(of: "reduce") {
    // we create an array with values from 1 to 3, or 1, 2, and 3.
    let oneToOneHundred = Array(1...3)
    // then we call reduce on the array, give it a starting value of 0 and specify the operator as addition, or +.
    let sum = oneToOneHundred.reduce(0, +)
    // and we print the sum
    print(sum)
}
//: [Next](@next)
