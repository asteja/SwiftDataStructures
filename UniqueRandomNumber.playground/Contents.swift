//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


func generateRandom(withinNumber: Int)  {
  
    var i:Int = 0
    var elements = Set<Int>()
    
    while i != withinNumber {
        let num:Int = Int(arc4random())%withinNumber + 1
        if elements.count <= withinNumber && elements.contains(num) == false {
            elements.insert(num)
        }
        else {
            i = i-1
        }
        
        i=i+1
    }
    
    print(elements)
    
    elements.removeAll()
    
}


generateRandom(withinNumber: 10)