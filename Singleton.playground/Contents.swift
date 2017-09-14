//: Playground - noun: a place where people can play

import UIKit
import Foundation

class TheOneAndOnlyKraken {
    
    var strSample = NSString()
    
    static let sharedInstance:TheOneAndOnlyKraken = {
            let instance = TheOneAndOnlyKraken()
            return instance
    }()
    
    init() {
        print("My Class Initialized")
        // initialized with variable or property
        strSample = "My String"
    }
        
}

var singleInstance = TheOneAndOnlyKraken.sharedInstance

var doubleIns = TheOneAndOnlyKraken.init()

var thirdInstance = TheOneAndOnlyKraken.sharedInstance


func maxProduct(var arr:[Int], var n:Int) -> Int
{
    // if size is less than 3, no triplet exists
    if (n < 3) {
    return nil;
    }
    
    // will contain max product
    var max_product:Int = INT_MIN;
    
    for i in 0..<arr.count {
        for j in i+1..<arr.count {
            for k in j+1..<arr.count {
                max_product = max(max_product,
                arr[i] * arr[j] * arr[k]);
            }
        }
    }
    return max_product;
}

