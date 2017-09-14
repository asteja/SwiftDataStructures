//
//  MaxNum.swift
//  Practise
//
//  Created by Saiteja Alle on 8/5/17.
//  Copyright © 2017 Saiteja Alle. All rights reserved.
//

import Foundation

class MaxNum {
    
    var arr = [-1,2,3,4]
    
    func findMax() {
        
        var max = arr[0]
    
        for i in 1...arr.count-1 {
            if arr[i] > max {
                max = arr[i]
            }
        }
    
        print(max)
    
    }
    
    
    
}
