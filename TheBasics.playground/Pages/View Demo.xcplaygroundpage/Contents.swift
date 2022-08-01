//: [Previous](@previous)
/*: # SwiftUI Demo

 Newer iOS apps use the `SwiftUI` framework to draw their views. If you run this playground, the view will display to the right if you've got Live View selected (2nd icon from the upper right corner) and you press ▶️.

 ## Code to render the view

 Below is the code used to render the view (assuming you've pressed play and are showing the live preview). Just because it's declared, it doesn't do anything until you initialize it, which we'll see below.
 */

import SwiftUI // gives us access to SwiftUI stuff
import PlaygroundSupport // gives us access to liveView functionality

struct ContentView: View {
    var body: some View {
        // HStack lays out everything inside of it horizontally
        HStack{
            // Everything inside this Vstack is laid out vertically
            VStack{
                // This is a custom view that's declared below
                BlueLine()
            }
            Text("My Events")
                .font(.subheadline)
                .fontWeight(.bold)
                .foregroundColor(Color.red)
            // Everything inside this Vstack is laid out vertically
            VStack{
                // This is a custom view that's declared below
                BlueLine()
            }
        }
        // This specifies how wide and how tall the view is
        .frame(width: 300, height: 50)
    }
}

// This code is called twice in ContentView
struct BlueLine: View {
    var body: some View {
        Rectangle()
            .fill(Color.blue)
            .frame(height: 2)
            .edgesIgnoringSafeArea(.horizontal)
    }
}

/*:
 ## Initializing the view

Below is the code used to initialize the view that's declared above. See the comments below to understand what's going on.
 */

// We declare a constant called view. Content view only has a computed property, but no instance properties on it, so we just assign view to ContentView()
let view = ContentView()
// Now that the view's initialized, we need to put it in a view controller, which is declared below. UIHostingController takes a View, so we just plug in the one we declared on the line above
let hostingViewController = UIHostingController(rootView: view)
// Lastly, we tell PlaygroundPage.current.liveView that we want it to show the hostingViewController we declared above
PlaygroundPage.current.liveView = hostingViewController


//: [Next](@next)
