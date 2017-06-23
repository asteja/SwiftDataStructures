//: Playground - noun: a place where people can play

import UIKit
import Foundation


#define MAX(x, y) x > y ? x : y


let arr:[Int] = [3,6,7,9,-1,17,0,-18]

arr.sorted()


print(arr.filter ({ $0 != 0}))


let sortedArr = arr.min(by: {
print($0)
print($1)
    print("next")
return $0 > $1
})

let maxEle = arr.max(by: {$0 > $1})

print(sortedArr!)

print(maxEle!)



let sorin = arr.reduce(0) { x,y in
    print(x)
    print(y)
    print("//")
    return x+y
}

print(sorin)


int a = 1, b = 2
int result = 3 + MAX(a, b)



//class A:NSCopying {
//    var str:String
//    
//    init() {
//        str = "Hello PlayGround"
//    }
//    
//    
//    
//    public func copy(with zone: NSZone? = nil) -> Any {
//        return type(of:self).init(self)
//    }
//}
