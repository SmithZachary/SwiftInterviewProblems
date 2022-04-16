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
let e = 6
 a = 7
// setting e again is invalid, remove the print statemnt to see why
print("e = 4")
print(e)
print(a)

// the follwing challenge comes off of Angela Yu's Udemy Course
// without touching any of the existing code can you write 3 lines of code to switch around the values held inside the two variables a and b? *** and you cannot use any numbers in your code ex. you cant just write aa = 8 and bb = 5
var aa = 5
var bb = 8
//try (aa, bb) = (bb, aa) for a shorter way to do it
//write your code here
//dont change any of the existing code



print("aa: \(aa)")
print("bb: \(bb)")

// hint introduce another variable ie var cc = ?
// answer below
//
//
//
//
//
//
//
// did you solve it?

var cc = aa
aa = bb
bb = cc

// you can add chatracters together with the "+" symbol

var w = "space"
var x = "outer"
var y = x + w
print(y)

//MARK: - Will op1 + op2 + op3 be valid?
let op1: Int = 1
let op2: UInt = 2
let op3: Double = 3.34
//Swift doesn’t define any implicit cast between data types, even if they are conceptually almost identical (like UInt and Int).

//To fix the error, rather than casting, an explicit conversion is required. In the sample code, all expression operands must be converted to a common same type, which in this case is Double:
print("var resultOne = op1 + op2 + op3")
var resultTwo = Double(op1) + Double(op2) + op3


