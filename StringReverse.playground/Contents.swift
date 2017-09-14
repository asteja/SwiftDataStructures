//: Playground - noun: a place where people can play

import UIKit

//let string = "This is a test string."
//let characters = string.characters
//let reversedCharacters = characters.reversed()
//let reversedString = String(reversedCharacters)


var str = "Hello Playground"
var words = str.components(separatedBy: " ")

func reverse(array: [String]) -> String {
    
    var revStr = ""
    
    for str in words {
        revStr += rev(str: str) + " "
    }
    
    return revStr
}


func rev(str: String) -> String {
    let characters = str.characters
    let revCharacters = characters.reversed()
    return String(revCharacters)
}

print(reverse(array: words))

