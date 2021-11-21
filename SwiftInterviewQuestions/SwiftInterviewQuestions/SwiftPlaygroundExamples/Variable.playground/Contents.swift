import UIKit
import Foundation
var section: String
//MARK: - How to use
//Below are questions I have found through experience or the internet, I put it in playgrounds so you can see the quesitons and answers in action,(in no specifc order) to access certain features take away the print statement to see why the code wont work. hope this helps feel free to add to it, follow me on gitgub.com/smithzachary or instagram/twitter @spacemulecode
//MARK: - Difference between var and let

// Swift uses type inference to decide which value a variable has
var c: Int = 5
var d = 5

// these will output the same var = int
// remove the print statement and see that now that c is an Int it cannot be assigned a bool value. This is a static type safety.
print("c = true")
 //

// variables and constants

var a = 3
let b = 6
 a = 7
// setting b again is invalid, remove the print statemnt to see why
print("b = 4")
print(b)
print(a)
