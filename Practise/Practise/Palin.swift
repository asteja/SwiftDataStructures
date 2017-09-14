//
//  Palin.swift
//  Practise
//
//  Created by Saiteja Alle on 7/9/17.
//  Copyright © 2017 Saiteja Alle. All rights reserved.
//

import Foundation

class Solution2 {
    
    
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        if nums.count == 0 {
            return []
        }
        
        for i in 0..<nums.count {

            let elementToSearch = target-nums[i]
            if let index = binarySearch(nums, key: elementToSearch, range: i+1..<nums.count) {
                return [i,index]
            }
            
        }
        
        return []
        
    }
    
    func binarySearch<T: Comparable>(_ a: [T], key: T, range: Range<Int>) -> Int? {
        
        var index:Int = 1
        
        print(range.upperBound)
        
        for i in range.lowerBound..<range.upperBound {
            print(i)
            if key == a[i] {
                index = i
            }
        }
        
        return index
        
    }
    
}
