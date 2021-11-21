import UIKit

// for a walk through https://www.skillshare.com/projects/Swift-iOS-Interview-Whiteboard-Questions-Exercises/118472
//MARK: - Fizz, Buzz, Fizz Buzz

//Divisible by 3 = Fuzz
//Divisible by 5 = Buzz
//Divisible by 3 && 5 = FizzBuzz

//Conditionals and Loops
// % is remainder below the output is 3 because 10 goes into 13 two times with the remainder equaling 1
13 % 10

for i in 1...100{
    switch (i % 3, i % 5) {
    case(0,0):
        print("FizzBuzz")
    case(0,_):
        print("Fizz")
    case(_,0):
        print("Buzz")
        
    case (_, _):
        //prints any number that doesnt meet the above conditions
        print(i)
    }
}


