//
//  ZigZag.swift
//  Practise
//
//  Created by Saiteja Alle on 7/10/17.
//  Copyright © 2017 Saiteja Alle. All rights reserved.
//

import Foundation

class ZigZag {
    func convert(_ s: String, _ numRows: Int) -> String {
        
        var str:String = ""
        let strArray:[Character] = Array(s.characters)
        print(strArray)
        var j = numRows+1
        var i = 0
        var k = 0
        var l = 0
        
        print("while loop")

        while str.characters.count < strArray.count {
            
            if k > strArray.count || str.characters.count == 0 {
                str += "\(strArray[l])"
                l += 1
                k = l
            }else {
                i = j - l
                k += i
                
            }
            
         }
        return str
        
    }
}
