//: Playground - noun: a place where people can play
import Foundation

func mergeSort<T: Comparable>(_ array: [T]) -> [T] {
    guard array.count > 1 else { return array }
    let middleIndex = array.count / 2
    let leftArray = mergeSort(Array(array[0..<middleIndex]))
    let rightArray = mergeSort(Array(array[middleIndex..<array.count]))
    return merge(leftPile: leftArray, rightPile: rightArray)
}

func merge<T: Comparable>(leftPile: [T], rightPile: [T]) -> [T] {
    var leftIndex = 0
    var rightIndex = 0
    var orderedPile = [T]()
    if orderedPile.capacity < leftPile.count + rightPile.count {
        orderedPile.reserveCapacity(leftPile.count + rightPile.count)
    }
    
    while leftIndex < leftPile.count && rightIndex < rightPile.count {
        if leftPile[leftIndex] < rightPile[rightIndex] {
            orderedPile.append(leftPile[leftIndex])
            leftIndex += 1
        } else if leftPile[leftIndex] > rightPile[rightIndex] {
            orderedPile.append(rightPile[rightIndex])
            rightIndex += 1
        } else {
            orderedPile.append(leftPile[leftIndex])
            leftIndex += 1
            orderedPile.append(rightPile[rightIndex])
            rightIndex += 1
        }
    }
    
    while leftIndex < leftPile.count {
        orderedPile.append(leftPile[leftIndex])
        leftIndex += 1
    }
    
    while rightIndex < rightPile.count {
        orderedPile.append(rightPile[rightIndex])
        rightIndex += 1
    }
    
    return orderedPile
}


func greatestProduct(arr:[Int]) -> Int
{
    // if size is less than 3, no triplet exists
    if (arr.count < 3) {
        return 1
    }
    
    // will contain max product
    var max_product:Int = 1;
    
    for i in 0..<arr.count {
        for j in i+1..<arr.count {
            for k in j+1..<arr.count {
                max_product = max(max_product,
                                  arr[i] * arr[j] * arr[k]);
            }
        }
    }
    return max_product;
}


func countCharacters(from start: Int, to end: Int) -> Int {
    
    var str = ""
    
    for i in start...end {
        str += i.plainEnglish()
    }
    return str.characters.count
}

extension Int {
    func plainEnglish (negativeSign: String = "negative") -> String {
        func singleNumberName (number: Int) -> String {
            switch (number) {
            case 1: return "one"
            case 2: return "two"
            case 3: return "three"
            case 4: return "four"
            case 5: return "five"
            case 6: return "six"
            case 7: return "seven"
            case 8: return "eight"
            case 9: return "nine"
            default:return ""
            }
        }
        
        func tensNumberName (number: Int) -> String {
            switch (number) {
            case 2: return "twenty"
            case 3: return "thirty"
            case 4: return "fourty"
            case 5: return "fifty"
            case 6: return "sixty"
            case 7: return "seventy"
            case 8: return "eighty"
            case 9: return "ninety"
            default:return ""
            }
        }
        
        func teensNumberName (number: Int) -> String {
            switch (number) {
            case 0: return "ten"
            case 1: return "eleven"
            case 2: return "twelve"
            case 3: return "thirteen"
            case 5: return "fifteen"
            default:return singleNumberName(number: number) + "teen"
            }
        }
        
        var number = self
        var digits: [Int] = []
        
        while number != 0 {
            digits.append(abs(number%10))
            number /= 10
        }
        
        var plainEnglish: [String] = []
        
        var isTeen = false
        let totalPlaces = digits.count
        var currentPlace = 0
        
        
        
        for (index, digit) in digits.reversed().enumerated() {
            currentPlace = totalPlaces - index
            if currentPlace % 3 == 0 && digit > 0 {
                plainEnglish.append(singleNumberName(number: digit) + "hundred")
            } else if (currentPlace + 1) % 3 == 0 {
                if digit == 1 {
                    isTeen = true
                    continue;
                } else {
                    isTeen = false
                    plainEnglish.append(tensNumberName(number: digit))
                }
            } else {
                if isTeen {
                    plainEnglish.append(teensNumberName(number: digit))
                } else {
                    plainEnglish.append(singleNumberName(number: digit))
                }
            }
            
            if currentPlace == 4 {
                plainEnglish.append("thousand")
            }
        }
        
        let initial = (self < 0) ? negativeSign : ""
        
        func combine (first: String, second: String) -> String {
            return first + second
        }
        
        
        var finalString = ""
        print(plainEnglish)
        
        
        for i in plainEnglish {
            finalString += i
        }
        
        print(finalString)
        return finalString
    }
}

print(countCharacters(from: 101, to: 103))