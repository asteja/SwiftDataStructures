//
//  JSONParsing.swift
//  Practise
//
//  Created by Saiteja Alle on 7/10/17.
//  Copyright © 2017 Saiteja Alle. All rights reserved.
//

import Foundation



class JSONParsing {
    
    var jsonObject:[String:Any]!
    
    func readInput() {
        
        while let line = readLine() {
            do {
                jsonObject = try JSONSerialization.jsonObject(with: line.data(using: .utf8)!, options: []) as! [String:Any]
                print(printSumOfIdWithLabels())
            }catch {
                print(error)
            }
        }
        
    }
    
    func printSumOfIdWithLabels() -> Int {
        
        let tempArray = jsonObject["menu"]! as! [String:Any]
        let itemArray = tempArray["items"] as! [Any?]
        var sum:Int = 0
        
        for element in itemArray {
            var idValue = element == nil ? nil : element as? [String:Any]
            guard idValue != nil && idValue?.keys.count == 2 else {
                continue
            }
            
            sum += idValue!["id"] as! Int
        }
        return sum
        
    }
    
}
