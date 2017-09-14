class Solution1 {
    
    
    func longestPalindrome(_ s: String) -> String {
        
        var str:[Character] = Array(s.characters)
        var i = 0
        var j = str.count-1
        var palinLen:Int=0
        
        var dict:[Int:String] = [:]

        while i <= str.count-1 {
            let charact = str[i]
            str[i] = " "
            if str.contains(charact) {
                j = str.index(of: charact)!
                if checkPalindrome(strArray: str , i: i+1, j: j-1) {
                    var palindrome = String(charact)
                    for index in i+1..<j+1 {
                        palindrome += String(str[index])
                    }
                    if palindrome.characters.count > palinLen {
                        palinLen = palindrome.characters.count
                    }
                    dict[palindrome.characters.count] = palindrome
                }
            }
            i += 1
        }
        return dict[palinLen]!
    }
    
    
    func checkPalindrome(strArray:[Character], i:Int, j:Int) -> Bool {
        
        var lower = i
        var upper = j
        
        while lower>upper {
            if strArray[lower] != strArray[upper] {
                    return false
            }
            lower += 1
            upper -= 1
        }
        
        if lower>=upper {
            return true
        }
        
        return false
        
    }
    
    
    
    
}

var z = ZigZag()

var y = MaxNum()

print(y.findMax())



