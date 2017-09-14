//: Playground - noun: a place where people can play

import UIKit
import Foundation


class Solution {
    func longestPalindrome(_ s: String) -> String {
        
        let chars = Array(s.characters)
        var j=0, k=0
        var ans:String = ""
        
        for i in 1..<chars.count {
            if chars[i-1] == chars[i+1] {
                var temp = ""
                temp.append(chars[i])
                ans.insert(chars[i+1], at: temp.index(after: temp.endIndex))
                j = i-1
                k = i+1
                while j>=0 && k<chars.count {
                    if chars[j-1] == chars[k+1] {
                        temp.insert(chars[k+1], at: temp.index(after: temp.endIndex))
                        j -= 1
                        k += 1
                    }else {
                        break
                    }
                }
                
                if temp.characters.count > ans.characters.count {
                    ans = temp
                }
            }
        }
        
        return ans
    }
}


//if chars[j] == chars[j+1] {
//    ans.append(chars[j])
//    ans.append(chars[j+1])
//    i = j-1
//    k = j+2
//    while i>=0 && k<chars.count {
//        if chars[i] == chars[k] {
//            i -= 1
//            k += 1
//        }else {
//            
//        }
//    }
//    
//}else {
//    j += 1
//}
