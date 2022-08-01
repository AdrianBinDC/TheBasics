//: [Previous](@previous)
/*: # Protocols

 Protocols are blueprints for creating objects. Protocols only describe the "what", not the "how".

 In the example below, We're going to define a protocol for `Vehicle`, `Airplane`, and `Car`.
 */

// Vehicles have different engine types, so we'll define some `EngineTypes` here
enum EngineType: String {
    case gasoline = "gasoline"
    case diesel = "diesel"
    case jet = "jet"
}


protocol Vehicle {
    var numberOfWheels: Int { get }
    var engineType: EngineType { get }
}

protocol Airplane {
    func fly()
}

protocol Car {
    func drive()
}

/*: ## Creating a Car class

 Now that we've got our protocols, we're going to define some classes with them.

 First, we'll declare a `HondaCivic` class of type `Vehicle`, which is a protocol.

 Since it's a `Vehicle`, we need to "conform" to the vehicle protocol by specifying the number of wheels and the `EngineType`.
 */

class HondaCivic: Vehicle {
    var numberOfWheels: Int {
        // return 4 will also compile, but modern Swift has implicit returns for one-liners
        4
    }
    var engineType: EngineType {
        // return .gasoline will also compile, but Swift has implicit returns for one-liners
        .gasoline
    }
}

/*: Since a `HondaCivic` is a car, we need to implement the `Car` protocol, which we didn't do in the original declaration above. Swift allows us to extend the class to do extra stuff via what's called an `extension`. Below is an example of an `extension`.
 */

extension HondaCivic: Car {
    // drive() is the "what"
    func drive() {
        // and this is the "how", or the implementation for the protocol.
        print("put the key in the ignition, turn the car on, put it in drive, and press the gas.")
    }
}

/*: ## Using the newly created HondaCivic

 Above, we declared a `HondaCivic` which conforms to the `Vehicle` and `Car` protocols. Now, we initialize it.
 */

// we declare an instance (myNewCar) and set it to be the `HondaCivic()` object
let myNewCar = HondaCivic()
// we print out some of the properties for which we wrote an implementation
print("myNewCar's engineType is \(myNewCar.engineType.rawValue)")
print("myNewCar has \(myNewCar.numberOfWheels) wheels")
// and we execute the object's drive() method, which executes the code we specified in drive()
myNewCar.drive()

/*: Challenge: Create a BoeingJet

Based on the example above for HondaCivic, create a `BoeingJet` class which conforms to...
 - `Vehicle` protocol
 - `Airplane` protocol

 I've included the `class` declaration, but no implementation. The playground should complain that it doesn't conform to the `Vehicle` protocol. Click the red circle that pops up and fill in the blanks. You're on your own writing the `extension` to extend the `BoeingJet` protocol.

 Uncomment the lines below and give it a shot.
 */

//class BoeingJet: Vehicle {
//
//}

// TODO: write an extension for BoeingJet to implement the Airplane protocol


//: [Next](@next)
