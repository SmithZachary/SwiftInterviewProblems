import UIKit

// - Whats the value of  var len and why?


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

