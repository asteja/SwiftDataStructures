//: Playground - noun: a place where people can play

import UIKit

//var arr:[Int] = [1,2,3,4,5,6]
//
//
//for number in arr.reversed() {
//    print(number)
//}


var num:Int = 8769

var str =  num as NSNumber

var numStr = str.stringValue

//for symbol in numStr.characters {
//    print(symbol)
//}

//var number = "123456"
//var array = number.utf8.map{Int($0)-48}
//
//for numbero in array.reversed() {
//    print(numbero)
//}
//
////for charact in num.characters {
////    
////}
////
////
////print(numMirror)
////
////for numbero in numMirror.children {
////    print(numbero)
////}

let numbers = [ -1, 3, 7, -11]
var x = numbers[0]

for i in 1..<numbers.count {
    if numbers[i] > x {
        x = numbers[i]
    }
}

print(x)
