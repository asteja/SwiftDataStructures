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
