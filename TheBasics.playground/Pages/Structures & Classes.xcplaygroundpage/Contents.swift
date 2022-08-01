//: [Previous](@previous)

/*:
 # Structures & Classes

 Now that we know about constants, variables, value types, enumerations, and methods, we can tie those all together to create Structures (aka `struct`) and Classes (aka `class`).

 A class and a struct are pretty much the same thing, but there are a couple of major differences between them, which I'll elaborate on as we run through this. For now, let's think of them as ways to package up variables and methods into an object that can do stuff.

 > Going forward, I'm going to start putting `// comments in code` , as it's a little simpler to comprehend without context switching between instructional information and actual code.

 ## Structs

 Structs are what are known as **value types**. Value types are independent instances that hold their data in their own memory allocation. If you copy a struct and change a value on it, it won't change other objects that were copied from it. Typical value types are `structs`, `enums`, and `tuples` (we'll get to those much later).
 */


struct PersonStruct {
    var firstName: String
    var lastName: String

    // This is a computed var
    var fullName: String {
        return "\(firstName) \(lastName)"
    }

    // with a struct, we get an initializer "for free", so you generally don't need to specify one.

    func introduceYourself() {
        print("Hi, my name is \(fullName)! Nice to meet you!")
    }
}

example(of: "a struct") {
    let personStruct = PersonStruct(firstName: "Joe", lastName: "Schmoe")
    // printing the type to see what type it is...
    print(type(of: personStruct))
    // this is a computed var, which gets computed "on the fly" based on whatever firstName and lastName are
    print(personStruct.fullName)
}

/*:
 ## Classes

 A class is a **reference type**. A reference type shares a single copy of its data. That means if you copy a class instance, copies of it will still point to it. As a practical matter, that means when you change a property on one, all copies of it will be changed. I'll go over this on the next slide, but for now just know that classes are reference types and structs are value types.

 ### Initializer

 To initialize a class, you need to have values for all of its properties. In the `Person` class, to initialize an instance of it, it needs to know:
-  the value for `firstName`, which we can see is a `String`
 - the value for `lastName`, which we can see is also a `String`
 */

class PersonClass {
    // these are what's referenced by self in the initializer
    var firstName: String
    var lastName: String

    // This is a computed var
    var fullName: String {
        return "\(firstName) \(lastName)"
    }

    // with a class, we need to have an initializer to create the object.
    // to create a PersonClass object, we need to specify a value for the firstName and lastName parameters, which are defined as Strings
    init(firstName: String, lastName: String) {
        // self.firstName is for the PersonClass instance. firstName refers to the init parameter called firstName.
        self.firstName = firstName
        // self.lastName is for the PersonClass instance. lastName refers to the init parameter called lastName.
        self.lastName = lastName
    }

    func introduceYourself() {
        print("Hi, my name is \(firstName) \(lastName)! Nice to meet you!")
    }
}

example(of: "a class") {
    // here, we declare a personInstance and initialize it.
    let personInstance = PersonClass(firstName: "Joe", lastName: "Sixpack")
    print(type(of: personInstance))
    // now that it's initialized, we can print out the value of fullName because it's initialized.
    print(personInstance.fullName)
}

//: [Next](@next)
