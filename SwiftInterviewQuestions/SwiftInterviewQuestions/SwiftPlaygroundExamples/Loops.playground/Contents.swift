import UIKit
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




