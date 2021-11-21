import UIKit

//If you use an extra “inout” keyword in a parameter, the original value passed in the parameter will be changed, once the function is executed.
func swapTwoInts(_ a: inout Int, _ b: inout Int) {
   let temporaryA = a
   a = b
   b = temporaryA
}

//In this function, the values of a and b are swapped.

var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")
// Prints "someInt is now 107, and anotherInt is now 3"
//Once executed, you can see that the original values have been changed.
