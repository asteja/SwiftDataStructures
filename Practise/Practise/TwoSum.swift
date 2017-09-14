//
//  TwoSum.swift
//  Practise
//
//  Created by Saiteja Alle on 7/17/17.
//  Copyright © 2017 Saiteja Alle. All rights reserved.
//

import Foundation

class Solution6 {
    
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
    
        let eleSet = Set(nums)

        for ele in nums {
            
            let eleToFind = target - ele
            var i = nums.index(of: eleToFind)!
            
                if eleSet.contains(eleToFind) &&  i != nums.index(of: ele)! {
                    return [nums.index(of: ele)!, i]
                }
         
        }
        
        return []

    }
    
}

