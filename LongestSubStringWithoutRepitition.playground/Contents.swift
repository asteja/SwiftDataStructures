import Foundation

struct DistinctWord {
    var charArray:[Character]
    var charCount:Int
}

class Solution: NSObject {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        
        var arr = [DistinctWord]()
        var tempArray:[Character] = []
        var strArray:[Character] = Array(s.characters)
        
        var i=0
        var j=0
        var count = 0
        
        
        while j <= strArray.count-1 {
            
            guard tempArray.contains(strArray[j]) else {
                tempArray.append(strArray[j])
                if j==strArray.count-1 {
                    arr.append(DistinctWord.init(charArray: tempArray, charCount: j-i+1))
                    i = j
                    tempArray.removeAll()
                }
                j += 1
                continue
            }
            
            arr.append(DistinctWord.init(charArray: tempArray, charCount: j-i))
            i = j
            tempArray.removeAll()
            
        }
        
        for struc in arr {
            if struc.charCount > count {
                count = struc.charCount
            }
        }
        
        return count
    }
}


var s = Solution()
var str = "Hello Playground"

print(s.lengthOfLongestSubstring(str))