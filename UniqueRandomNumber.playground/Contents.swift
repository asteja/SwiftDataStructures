//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var arr:Any

print(arr = arc4random_stir())

func generateRandom(withinNumber: Int)  {
  
    var i:Int = 0
    var elements = [Int]()
    
    while i != withinNumber {
        let num:Int = Int(arc4random_uniform(UInt32(withinNumber))) + 1
        if elements.count <= withinNumber && !elements.contains(num) {
            elements.append(num)
        }
        else {
            i = i-1
        }
        
        i=i+1
    }
    
    print(elements)
    
}


generateRandom(withinNumber: 10)

//var arr = [1, 3, 7, 8 ,9, 9]
//
//var s:Set = [5, 5, 7, 8, 9, 5]
