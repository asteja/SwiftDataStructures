//
//  Palindrome.swift
//  Practise
//
//  Created by Saiteja Alle on 7/8/17.
//  Copyright © 2017 Saiteja Alle. All rights reserved.
//
import Foundation

class Solution {
    
    
    var strArray:[Character] = []
    var palinString:String = ""
    
    func longestPalindrome(_ s: String) -> String { //babad
        
        strArray = Array(s.characters)
        print(strArray)
        
        if strArray.count == 0 {
            return ""
        }
        
        if strArray.count == 1 {
            return s
        }
        
        
        for i in 0...strArray.count-1 {//m
            for j in i...strArray.count-1 {//n
                print(checkPalindrome(lower:i, upper:j))
            }
        }
        
        return palinString
    }
    
    func checkPalindrome( lower:Int, upper:Int) -> String {
        
        var i = lower
        var j = upper
        var mid = 0
        var palin:String = ""
       
        
        while j>=i {
           
            if strArray[i] != strArray[j] {
                palin = ""
                return ""
            }else {
                palin += "\(strArray[i])"
            }
            
            i += 1
            j -= 1
        }
        
        if  palin.characters.count > palinString.characters.count && j != i {
            mid = upper/2
            while mid >= upper {
                print(mid)
                palin += "\(strArray[mid+1])"
                print("palin=\(palin)")
                mid += 1
            }
            palinString = palin
        }
        
        mid = 0
        return palinString
    }
}


