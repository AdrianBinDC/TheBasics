//: [Previous](@previous)

/*:
 # Enumerations

 In Swift, an enumeration (called an `enum`) is a user-defined data type that has a fixed set of related values. It's typically used for control flow (which we'll get into later).

 For now, just know that you can have typed and untyped enumerations.

 ## Untyped enumeration
 */

enum Season {
    case spring
    case summer
    case fall
    case winter
}

/*:
 We declare a `var` named `aSeason` of type `Season` and set it (assign) to `.spring`
 */
var aSeason: Season = .spring

/*:
 Here is an example of control flow using a switch statement to evaluate the value of `aSeason`:
 > You can change the assigned value of `aSeason` above to something else and press ▶️ at the bottom to see it go down a different path in the `switch` statement.
 */
example(of: "evaluating an enum with a switch statement") {
    // we tell the switch to look at the value for aSeason...
    // ...and whichever season it is (see aSeason defined above), it'll execute the code specified for the case...
    switch aSeason {
    case .spring:
        print("the season is spring")
    case .summer:
        print("the season is summer")
    case .fall:
        print("the season is fall")
    case .winter:
        print("the season is winter")
    }
}

/*:
 ## Typed Enumeration

 You an specify a type for an enumeration and it'll have a `rawValue` associated with it.

 Above, we just declared the `enum Season { // cases defined }` without specifying a type.

 Below, we specify a type of `Int` by adding `: Int` after `PlanetDistanceFromSun`
 */

enum PlanetDistanceFromSun: Int {
    case mercury = 35_000_000
    case venus = 67_000_000
    case earth = 93_000_000
    case mars = 142_000_000
    case jupiter = 484_000_000
    case saturn = 889_000_000
    case uranus = 1_790_000_000
    case neptune = 2_880_000_000
    case pluto = 3_670_000_000
}

var aPlanet: PlanetDistanceFromSun = .neptune

example(of: "another example of string interpolation") {
    print("Here, we're reading aPlanet's rawValue, declared above, and dumping it in a string")
    print("\(aPlanet.rawValue) miles from the Sun")
}

/*:
 This probably doesn't make sense yet. Think of it as a Lego block and it's a type of block in the box that you can use to make things later.

 So far, we've only talked about constants, variables, types, and enumerations which are used to store values. They're just blocks of different types, to use the lego analogy. Next, we'll do a brief introduction to methods, which is where we can execute code to perform tasks.

 */

//: [Next](@next)
