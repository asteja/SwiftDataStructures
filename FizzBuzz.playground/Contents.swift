//: Playground - noun: a place where people can play

import UIKit
import Foundation

var arr:Array = ["str", 1, 3] as [Any]

func FizzBuzz<T: Hashable>(num:T) {
    
    let count:Int = num as! Int
    
    for i in 1...count{
        var result = ""
        
        if i%3 == 0 {
            result += " Fizz"
        }
        
        if i%5 == 0 {
            result += " Buzz"
        }
        
        if result.isEmpty {
            result += " \(i)"
        }
        
        if i != count {
            result += ","
        }
        print(result)
    }
}

FizzBuzz(num: 10)

var str = "123456"
Int(str)