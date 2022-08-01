//: [Previous](@previous)
/*:
 # Constants & Variables

 There are two types of declarations in Swift.
 1. `var`  A `var` can be changed after it's declared, or re-assigned. A value that can be changed after its initial declaration is said to be **mutable**
 2. `let`  A `let` can NOT be changed and is said to be **immutable**.
 */

/*:
 ## Variables
 Below, we're
 1. Declaring a variable
 2. Printing it
 3. Re-assigning it
 4. Printing it again after it's been assigned

 */

example(of: "variable declaration") {
    print("initially, we declare myVariable to have a value of 1")
    var myVariable = 1 // declare the variable
    print(myVariable) // print it and it should print as "1" in the console below.
    myVariable = 100 // assign a new value, 100, to myVariable
    print("after reassigning the value of myVariable...")
    print(myVariable) // print it and it the value should now be 100
}

/*:
 ## Constants

 As mentioned above, constants are said to be "immutable", meaning they can't be changed.

 > When writing code, you'll often "comment" code, which means holding down the "cmd" and "/" keys at the same time.
 >
 > Commenting code will put `// ` in front of the line and it will no longer be considered by the compiler for compilation. You can highlight multiple lines of code and comment them all at the same time.

 ```swift
 let uncommentedConstant = 42
 // let commentedConstant = 1000
 ```

 */

example(of: "constant declaration") {
    let myConstant = 1000 // Declare a constant
    print(myConstant)
//     myConstant = 100 // this won't compile. the compiler will show an error re: why. we can't assign a new value to a let, because it's a constant.
}



//: [Next](@next)
