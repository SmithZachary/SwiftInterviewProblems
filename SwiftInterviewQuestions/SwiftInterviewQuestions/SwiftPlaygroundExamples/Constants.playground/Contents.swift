import UIKit
    //constatnts are declared using a let instead of a var

let greeting = "Hello, playground"

// umcomment the statement below to see the error
// greeting = "Goodbye, playground"

//in the below code declare a constant called secondsInAnHour that represents the number of seconds in an hour and assign that number to it on the same line. The data type of the constant should be an Int/

func excersise() {
    
    //write your code here
    //when complete the print statement should output how many seconds are in an hour
    //hint you may need more than one let statement

    
    // Remove the quoations in  the print statement to teset your answer
   print("secondsInAnHour")
}
excersise()
//
// solution below
//
//
//
//
//
//
//
//
//
func excersiseAnswer() {
    let minutesInAnHour = 60
       let secondsInAMinute = 60
       let secondsInAnHour = secondsInAMinute * minutesInAnHour
    
    print(secondsInAnHour)
}
excersiseAnswer()



//MARK: - Randomisation Excersise



//You are going to create a password generator using the array bellow called alphabet which contains all the letters in the alphabet.

//write some code to randomly pick 6 letters out of the alphabet to create a random 6 character password.

// hint you can add chatracters together with the "+" symbol

var w = "space"
var x = "outer"
var y = x + w
print(y)

// note password should be a String of characters like "vacbae" or "abdeds"

func passwordExcersise() {
    let alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    //there are 26 items in the alphabet array
    //hint use Int.random to access a random spot in the array count
    
    //code here
 
    //remove "" when you have an answer to check if it prints out the correct answer
    print("password")
}

passwordExcersise()
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
//
//

func passwordAnswer() {
    
    let alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    
let password = alphabet[Int.random(in: 1...26)] + alphabet[Int.random(in: 1...26)] + alphabet[Int.random(in: 1...26)] + alphabet[Int.random(in: 1...26)] + alphabet[Int.random(in: 1...26)] + alphabet[Int.random(in: 1...26)]
    
    print(password)
    
}

passwordAnswer()
