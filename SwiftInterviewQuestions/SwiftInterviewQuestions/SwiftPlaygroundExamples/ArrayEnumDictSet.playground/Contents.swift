import UIKit

//// - Whats the value of  var len and why?
//Q) What are the collection types that are available in swift?
//
//Answer: There are three primary collection types that are available in swift for storing a collection of values. They are dictionaries, sets, and arrays
//
//Arrays: Arrays is an ordered collection of values, which is stored in the same type of values in an ordered list.
//Sets: Sets are an unordered collection of unique values, which are stored in a distinct value of the same type in a collection without any defined ordering.
//Dictionaries: Dictionaries are an unordered collection of Key and value pair associations in an unordered manner.

//MARK: - Break
var array1 = [1,2,3,4,5]
var array2 = array1
array2.append(6)
var len = array1.count
//how many items will len have and why?
//arrays are value type so when you call a new array it will create a new copy of that array
print(len)

// Given the array of numbers creat another array called computerNumbers. computedNumbers should multiply each element in the numbers array by the next element. The last element shouldbe multiplied by the first
//e.g. if numbers was equat to [3,1,4,2] -- computedNumbers should equal [3x1. 1x4. 4x2. 2x3] which is [3, 4, 8, 6]
// Hints --
// multiplication is done using a * not a x
// you shold not have to do the calculations yourself, it should be done by code
// you are NOT allowed to type the numbers 45, 73, 195 or 53 in your solution code
//computerNumbers should be crated as a variable named exactly as you see in the print statement. Do not change the rest of the code.

//there are multiple ways to solve this, try declaring each position of the array as a variable then try it a different way and wrap it in a for loop -- try it beofre you scroll down for the answers-- if you solved it a different way let me know!

func excersise() {
    let numbers = [45, 73, 195, 53]
    
  //  let computerNumbers = //put code here
     
  //  print(computerNumbers)
}
//
//
//
//
//
//
//
//
//
//
//
//
//

//answer
//func excersise2() {
//    let numbers = [45, 73, 195, 53]
//
//    //Create a new array called computedNumbers
//    var computedNumbers = [
//      numbers[0] * numbers[1],
//      numbers[1] * numbers[2],
//      numbers[2] * numbers[3],
//      numbers[3] * numbers[0]
//    ]
//
//
//    print(computedNumbers)
//
//}
//
//excersise2()
//use the array duplicates below and pull out the numbers sorted and with no duplicates. This question was asked to me on a interview. A big trend I have seen is questions pertaining to manipulating arrays.

var duplicates = [1,1,1,3,4,7]
//answer below ** note there are a lot of wways to do this **
var nonDuplicares = Set(duplicates)
print(nonDuplicares)

duplicates.sort(by: >)
//for duplicate in duplicates {
//    duplicate.
//}
var newArray: [Int] = []
var previous: Int = 1
for duplicate in duplicates {
    if  duplicate != previous {
        newArray.append(duplicate)
        previous = duplicate
    }
}
print(newArray)
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

