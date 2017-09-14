//
//  AccessModifier.swift
//  Practise
//
//  Created by Saiteja Alle on 7/15/17.
//  Copyright © 2017 Saiteja Alle. All rights reserved.
//

import Foundation

struct SpaceCraft {
    fileprivate let warpCode: String
    
    init(warpCode: String) {
        self.warpCode = warpCode
    }
}
enum Status {
    case Doing
    case Pending
    case Completing
    
    func thingstoDO() {
    
    }
}

extension SpaceCraft {
    func goToWarpSpeed(warpCode: String) {
        if warpCode == self.warpCode { // Error in Swift 3 unless warpCode is fileprivate
            print("Do it Scotty!")
        }
        
        let en = Status.Doing
        en.thingstoDO()
        
    }
}




