import UIKit

var greeting = "Hello, playground"
//MARK: - Struct and Class
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

protocol FullNameable {
    var fullName: String { get }
}

struct Lecturer: FullNameable {
    var fullName: String
}

let lecturer = Lecturer(fullName: "Gift")

//Second Implementation
struct Student: FullNameable {
  let firstName: String
  let middleName: String
  let lastName: String
  
  var fullName: String {
    return "\(firstName) \(middleName) \(lastName)"
  }
}

let me = Student(firstName: "Abel", middleName: "Agoi", lastName: "Adeyemi")
