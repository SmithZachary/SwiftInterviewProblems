import UIKit

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
