import Foundation

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        
        var strArray:[Character] = Array(s.characters)
        var arr = [Int]()
        var tempArray:[Character] = []
        
        var i=0
        var j=0
        
        
        while j <= strArray.count-1 {
            
            guard tempArray.contains(strArray[j]) else {
                tempArray.append(strArray[j])
                if j==strArray.count-1 {
                    arr.append(j-i+1)
                    i = j
                    tempArray.removeAll()
                }
                j += 1
                continue
            }
            
            arr.append( j-i)
            i = j
            tempArray.removeAll()
            
        }
        
        return arr.max()!
    }
}


var s = Solution()
var str = "Hello Playground"

print(s.lengthOfLongestSubstring(str))
