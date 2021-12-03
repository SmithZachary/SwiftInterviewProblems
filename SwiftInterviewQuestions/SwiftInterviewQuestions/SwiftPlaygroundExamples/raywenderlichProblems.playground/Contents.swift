import Foundation
import UIKit
//ensure in the playground setting -----> over there that platform is selected to iOS

// the following examples come from https://www.raywenderlich.com/762435-swift-interview-questions-and-answers#toc-anchor-001
// #1
//consider the following

struct Tutorial {
  var difficulty: Int = 1
}

var tutorial1 = Tutorial()
var tutorial2 = tutorial1
tutorial2.difficulty = 2
print(tutorial1)
print(tutorial2)
//What are the values of tutorial1.difficulty and tutorial2.difficulty? Would this be any different if Tutorial was a class? Why or why not?
//tutorial1.difficulty is 1, whereas tutorial2.difficulty is 2.
//Structures in Swift are value types. You copy value types by value rather than reference. The following code creates a copy of tutorial1 and assigns it to tutorial2:
tutorial2 = tutorial1

//A change to tutorial2 is not reflected in tutorial1.
//If Tutorial were a class, both tutorial1.difficulty and tutorial2.difficulty would be 2. Classes in Swift are reference types. When you change a property of tutorial1, you’ll see it reflected in tutorial2 and vice versa.
// #2
var view1 = UIView()
view1.alpha = 0.5

let view2 = UIView()
view2.alpha = 0.6 // Will this line compile?
print(view2.alpha)
print(view1.alpha)

//#3
//
//This complicated code sorts an array of names alphabetically. Simplify the closure as much as you can.


var animals = ["fish", "cat", "chicken", "dog"]


animals.sort { (one: String, two: String) -> Bool in
    return one < two
}
print(animals)

//answer 
//The type inference system automatically calculates both the type of the parameters in the closure and the return type, so you can get rid of them:
animals.sort { (one, two) in return one < two }
print(animals)
//You can substitute the $i notation for the parameter names:
animals.sort { return $0 < $1 }
print(animals)
//In single statement closures, you can omit the return keyword. The value of the last statement becomes the return value of the closure:
animals.sort { $0 < $1 }
print(animals)
//Finally, since Swift knows that the elements of the array conform to Equatable, you can simply write:
animals.sort(by: <)
print(animals)

var studs = ["abby", "gabe", "xeke", "billy", "don"]
studs.sort { (one: String, two: String) -> Bool in
    return one < two
}
print(studs)
studs.append("lin")
print(studs)
studs.sort { (one, two) in return
    one < two
}
print(studs)
studs.count
studs.append("hank")
studs.sort(by: <)

//# 4

//This code creates two classes: Address and Person. It then creates two Person instances to represent Ray and Brian.

class Address {
  var fullAddress: String
  var city: String
  
  init(fullAddress: String, city: String) {
    self.fullAddress = fullAddress
    self.city = city
  }
}

class Person {
  var name: String
  var address: Address
  
  init(name: String, address: Address) {
    self.name = name
    self.address = address
  }
}

var headquarters = Address(fullAddress: "123 Tutorial Street", city: "Appletown")
var ray = Person(name: "Ray", address: headquarters)
var brian = Person(name: "Brian", address: headquarters)

//Suppose Brian moves to the new building across the street; you'll want to update his record like this:
brian.address.fullAddress = "148 Tutorial Street"

//This compiles and runs without error. If you check the address of Ray now, he's also moved to the new building.
print (ray.address.fullAddress)

//What's going on here? How can you fix the problem?
//Address is a class and has reference semantics so headquarters is the same instance, whether you access it via ray or brian. Changing the address of headquarters will change it for both. Can you imagine what would happen if Brian got Ray's mail or vice versa? :]
//The solution is to create a new Address to assign to Brian, or to declare Address as a struct instead of a class.



func areTheyEqual<T: Equatable>(_ x: T, _ y: T) -> Bool {
  return x == y
}

areTheyEqual("ray", "ray")
areTheyEqual(1, 1)
print(areTheyEqual(1, 1))


//#5
//What are the various ways to unwrap an optional? How do they rate in terms of safety?

// Hint there are 7

var x : String? = "Test"

//Forced unwrapping — unsafe.
var a: String = x!

//Implicitly unwrapped variable declaration — unsafe in many cases.
var d = x!

//Optional binding — safe.
if let b = x {
  print("x was successfully unwrapped and is = \(b)")
}

//Optional chaining — safe.
var e = x?.count

//Nil coalescing operator — safe.
var f = x ?? ""

//Guard statement — safe.
//guard let g = x else {
//  return g
//}

//Optional pattern — safe.
if case let a? = x {
  print(a)
}

//q 6

// what is the difference between nil and .none

nil == .none
//there isnt

