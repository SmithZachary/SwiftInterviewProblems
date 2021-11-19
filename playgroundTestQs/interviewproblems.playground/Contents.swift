import UIKit
import Foundation
var section: String
//MARK: - How to use
//Below are questions I have found through experience or the internet, I put it in playgrounds so you can see the quesitons and answers in action,(in no specifc order) to access certain features take away the print statement to see why the code wont work. hope this helps feel free to add to it, follow me on gitgub.com/smithzachary or instagram/twitter @spacemulecode
//MARK: - Difference between var and let

var a = 3
let b = 6
 a = 6
// setting b again is invalid, remove the print statemnt to see why
print("b = 4")

//MARK: - Break
print("-------------")
section = "Loops"
print(section)
print("-------------")
//MARK: - Break

//MARK: - For In Loops, While Loops
for number in 1...5 {
    //you should probably understand how i am calling number in the print statement below using a \
    print("Hello,\(number)")
}
//if you just want to return what is in the print statement and not print the numbers you can use _
for _ in 1...5 {
    print("Hello")
}

//further example

let fruits = ["apple", "pear", "orange"]
let contacts = ["Adam": 123456789, "James": 987654321, "Amy": 912374354]
let word = "Supercalifragilisticexpialdocious"
let halfOpenRange = 1..<5
let closedRange = 1...5
 //runs through the array of fruits
for fruit in fruits{
    //set vs array sets wont give a specifc order an array will
    print(fruit)
    
}
for person in contacts {
    print(person.key)
}

for letter in word {
    print(letter)
}

for number in halfOpenRange {
    print(number)
}
for number in closedRange {
    print(number)
}
for _ in halfOpenRange {
    print("Loop is running")
}
 //while loops\

//point here is while loops will run till a condition isnt true any more, they can be dangerious if they never are false

//while true {
//    //adding anything here will crash your code because true is always true and it will never stop, go ahead try it
//    //print("crash")
//}




//MARK: - Break


print("-------------")
section = "Optionals"
print(section)
print("-------------")
//MARK: - Break

//MARK: - Write Three Ways to unwrap an optional

var myString:String?

//if let unwrapping

if myString != nil {
    print("Value Exists")
} else {
    print ("Nil Value")
}

//guard let unwrapping
var someStr: String?
func unwrap() {
guard let unwrapped = someStr else { return }
print (unwrapped)
}
unwrap()
// set someStr = "Happy"

// forced unwrapping (unsafe)

var someBStr: String?
//take away the print statement to see why it is unsafe
print("let unwrapped3 = someStr!")

//MARK: - STRUCT and CLASS
//MARK: - Break
print("-------------")
section = "Structs and Class"
print(section)
print("-------------")
//MARK: - Break
//whats the difference? Structs are value types, classes are reference types
//value types(struct, enum) get copied as a new copy when referenced, reference types(class) do not
//https://abhimuralidharan.medium.com/difference-between-a-struct-and-a-class-in-swift-53e08df73714 good article on this

struct Resolution {
var width = 0
var height = 0
}
let vga = Resolution(width: 640, height: 480)

vga.width
vga.height

let rca = Resolution(width: 400, height: 200)

rca.width
rca.height
vga.width
vga.height

//class example
class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

let hd = Resolution(width: 1920, height: 1080)
var cinema = hd
cinema.width = 2048
let someVideoMode = VideoMode()
let tenEighty = VideoMode()
tenEighty.resolution = hd
print(tenEighty.resolution)
tenEighty.interlaced = true
print(tenEighty.resolution)
tenEighty.name = "1080i"
print(tenEighty.resolution)
tenEighty.frameRate = 25.0
print(tenEighty.frameRate)
//
//This example declares a new constant called tenEighty and sets it to refer to a new instance of the VideoMode class. The video mode is assigned a copy of the HD resolution of 1920 by 1080 from before. It’s set to be interlaced, its name is set to "1080i", and its frame rate is set to 25.0 frames per second.
//
//Next, tenEighty is assigned to a new constant, called alsoTenEighty, and the frame rate of alsoTenEighty is modified:
let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0
print(alsoTenEighty.frameRate)
print(tenEighty.frameRate)
//Because classes are reference types, tenEighty and alsoTenEighty actually both refer to the same VideoMode instance. Notice that tenEighty.frameRate changed when we asigned 30 to alsoTenEighty.frameRate)



//MARK: - Whats the value of  var len and why?
//MARK: - Break
print("-------------")
section = "Array"
print(section)
print("-------------")
//MARK: - Break
var array1 = [1,2,3,4,5]
var array2 = array1
array2.append(6)
var len = array1.count
//how many items will len have and why?
//arrays are value type so when you call a new array it will create a new copy of that array
print(len)

//MARK: - Will op1 + op2 + op3 be valid?
let op1: Int = 1
let op2: UInt = 2
let op3: Double = 3.34
//Swift doesn’t define any implicit cast between data types, even if they are conceptually almost identical (like UInt and Int).

//To fix the error, rather than casting, an explicit conversion is required. In the sample code, all expression operands must be converted to a common same type, which in this case is Double:
print("var resultOne = op1 + op2 + op3")
var resultTwo = Double(op1) + Double(op2) + op3

//MARK: - In Swift enumerations, whats the differnce between raw calues and associated values?

//Raw values are used to associate constant (literal) values to enum cases. The value type is part of the enum type, and each enum case must specify a unique raw value (duplicate values are not allowed).
//
//The following example shows an enum with raw values of type Int:

enum IntEnum : Int {
    case ONE = 1
    case TWO = 2
    case THREE = 3
}
//An enum value can be converted to its raw value by using the rawValue property:
var enumAVar: IntEnum = IntEnum.TWO
var rawValue: Int = enumAVar.rawValue

//A raw value can be converted to an enum instance by using a dedicated initializer:

var enumBVar: IntEnum? = IntEnum(rawValue: 1)

//Associated values are used to associate arbitrary data to a specific enum case. Each enum case can have zero or more associated values, declared as a tuple in the case definition:
enum AssociatedEnum {
    case EMPTY
    case WITH_INT(value: Int)
    case WITH_TUPLE(value: Int, text: String, data: [Float])
}
//Whereas the type(s) associated to a case are part of the enum declaration, the associated value(s) are instance specific, meaning that an enum case can have different associated values for different enum instances.


//MARK: - INOUT , what is an in and out pararmeter? how doyou use & in this parameter?
//MARK: - Break
print("-------------")
section = "INOUT"
print(section)
print("-------------")
//MARK: - Break

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

//MARK: - MVC Patter or any other design pattern, why do you use it?
//MARK: - Break
print("-------------")
section = "MVC Pattern"
print(section)
print("-------------")
//MARK: - Break

//mvc User -> action -> Controller
//Controller -> notifies -> Model
//Controller -> update -> View
//Model -> update -> Controller
//View -> show -> User

//

//MARK: - CoreDate vs. Realm

//core date is A native data storage provided by apple enables persistent permanent storage. It is easy to manage because you can use xcode to change Model name or attributes. It is native so it is very easy to update.

//MARK: - Frame VS Bounds

//bounds of a UIVIEW is location (x,y) and width (x,y
//frame  refers to the supverview that the UIView is contained in

