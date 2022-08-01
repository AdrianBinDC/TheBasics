import Foundation

func example(of concept: String, completion: ()->()) {
    print("Example of \(concept)")
    completion()
}
