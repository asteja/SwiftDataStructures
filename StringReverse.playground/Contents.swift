//: Playground - noun: a place where people can play

import UIKit

//let string = "This is a test string."
//let characters = string.characters
//let reversedCharacters = characters.reversed()
//let reversedString = String(reversedCharacters)


var str = "Hello Playground"
var words = str.components(separatedBy: " ")

func reverse(array: [String]) -> [String] {
    
    
    if array.count < 2 {
        return array
    }
    
    
    var leftArr = reverse(array: Array(array[0...(array.count/2)-1]))
    var rightArr = reverse(array: Array(array[(array.count/2)...(array.count-1)]))
    
    return rightArr + leftArr
    
}


reverse(array: words)

