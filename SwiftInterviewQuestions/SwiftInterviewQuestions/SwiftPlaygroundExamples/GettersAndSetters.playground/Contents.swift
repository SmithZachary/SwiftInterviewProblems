import Foundation

//MARK: - Getters
// stored properties


let pizzaInnInches: Int = 10

var numberOSlices: Int = 6

print(numberOSlices)

//still a stored property



//computed properties
// has to be a var
// have to explicitly specifiy a data type

let pizzaInInches: Int = 16
var numberOfPeople: Int = 12
let slicesPerPerson: Int = 4

var numberOfSlices: Int {
    //getter below, it runs to GET us the value of number of slices
    get {
return pizzaInInches - 4
    }
    //MARK: - Setters
    set {
        //newValue is special
        print("numberOfSlices now has a new value which is \(newValue)")
    }
}

var numberOfPizza: Int {
    get{
        let numberOfPeopleFedPerPizza = numberOfSlices / slicesPerPerson
        return numberOfPeople / numberOfPeopleFedPerPizza
    }
    set {
        let totalSlices = numberOfSlices * newValue
        numberOfPeople = totalSlices / slicesPerPerson
    }
}
numberOfPizza = 4
print(numberOfPizza)
let a = numberOfSlices * 2
numberOfSlices = 12
print(numberOfPeople)



//MARK: - Painter Challenge
//work out number if buckets of paint i need to paint the wall
// bucket of paint covers 1.5swm
var width: Float = 3.4
var height: Float = 2.3

 


var bucketsOfPaint: Int {
    let area = width * height
    let areaCoveredPerBucket: Float = 1.5
    let numberOfBuckets = area / areaCoveredPerBucket
    let roundedBUckets = ceilf(numberOfBuckets)
    return Int(numberOfBuckets)
}
print(bucketsOfPaint)
