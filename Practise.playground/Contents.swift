//: Playground - noun: a place where people can play

import Foundation


class Solution {
    
    
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        let firstNum = nums[0]
        var arr = nums
        var answer = [Int]()
        
        if nums.contains(target-firstNum) {
            answer.append(0)
            answer.append(nums.index(of: target-firstNum)!)
            arr.insert(0, at: nums.index(of: firstNum)!)
            arr.insert(0, at: nums.index(of: target-firstNum)!)
        }
        
        return answer
    }
    
    
}

var s = Solution()

s.twoSum([2, 7, 11, 15], 9)




































//var strArr = [String]()
//var arrSize:Int = 0
//
//func merge(leftPile: [String], rightPile: [String]) -> [String] {
//    
//    var leftIndex = 0
//    var rightIndex = 0
//    
//    // 2
//    var orderedPile = [String]()
//    
//    // 3
//    while leftIndex < leftPile.count && rightIndex < rightPile.count {
//        
//        if leftPile[leftIndex] < rightPile[rightIndex] {
//            orderedPile.append(leftPile[leftIndex])
//            leftIndex += 1
//        } else if leftPile[leftIndex] > rightPile[rightIndex] {
//            orderedPile.append(rightPile[rightIndex])
//            rightIndex += 1
//        } else {
//            orderedPile.append(leftPile[leftIndex])
//            leftIndex += 1
//            orderedPile.append(rightPile[rightIndex])
//            rightIndex += 1
//        }
//        
//    }
//    
//    // 4
//    while leftIndex < leftPile.count {
//        orderedPile.append(leftPile[leftIndex])
//        leftIndex += 1
//    }
//    
//    while rightIndex < rightPile.count {
//        orderedPile.append(rightPile[rightIndex])
//        rightIndex += 1
//    }
//    
//    return orderedPile
//    
//}
//
//func sorting(arr:[String]) -> [String] {
//    
//    if arr.count == 1 {
//        return arr
//    }
//    
//    let middleIndex = arr.count/2
//    let leftArray = sorting(arr: Array(arr[0..<middleIndex]))
//    let rightArray = sorting(arr: Array(arr[middleIndex..<arr.count]))
//    return merge(leftPile: leftArray, rightPile: rightArray)
//    
//}
//
//while let line = readLine() {
//    
//    if strArr.count == arrSize {
//        print(sorting(arr: strArr))
//    }
//    
//    if let n = Int(line) {
//        arrSize = n
//    }else {
//        if strArr.count <= arrSize {
//            strArr.append(line)
//        }
//    }
//    
//}


//class Person {
//    let name: String
//    init(name: String) { self.name = name }
//    var apartment:Apartment?
//    deinit { print("\(name) is being deinitialized") }
//    
//}
//
//class Apartment {
//    let unit: String
//    init(unit: String) { self.unit = unit }
//    var tenant: Person?
//    deinit { print("Apartment \(unit) is being deinitialized") }
//}
//
//var john: Person?
//var unit4A: Apartment?
//
//john = Person(name: "Saiteja")
//unit4A = Apartment(unit: "4Aaaa")
//
//john!.apartment = unit4A
//unit4A!.tenant = john
//


//
//
//class Customer {
//    let name: String
//    var card: CreditCard?
//    init(name: String) {
//        self.name = name
//    }
//     deinit { print("\(name) is being deinitialized") }
//    
//}
//
//class CreditCard {
//    let number: UInt64
//    let customer: Customer
//    init(number: UInt64, customer: Customer) {
//        self.number = number
//        self.customer = customer
//    }
//    deinit { print("Card #\(number) is being deinitialized") }
//}
//
//
//var john:Customer?
//
//print(john)
//
//
//func canThrowError() throws {
//    
//    print("can throw error")
//    
//}
//
//do {
//    try canThrowError()
//} catch  {
//    print("It throws an error")
//}



//john = Customer(name: "John Appleseed")
//john!.card = CreditCard(number: 1234_5678_9012_3456, customer: john!)
//
//john?.card = nil
//
//
//class Country {
//    let name: String
//    var capitalCity: City!
//    init(name: String, capitalName: String) {
//        self.name = name
//        self.capitalCity = City(name: capitalName, country: self)
//    }
//}
//
//class City {
//    let name: String
//    unowned let country: Country
//    init(name: String, country: Country) {
//        self.name = name
//        self.country = country
//    }
//}
//
//var country = Country(name: "India", capitalName: "New Delhi")
//
//


//let dollarSign = "\u{24}"
//let sparklingHeart = "\u{1F496}"
//
//
//
//let numberSymbol: Character = "三"  // Chinese symbol for the number 3
//var possibleIntegerValue: Int?
//switch numberSymbol {
//case "1", "١", "一", "๑":
//    possibleIntegerValue = 1
//case "2", "٢", "二", "๒":
//    possibleIntegerValue = 2
//case "3", "٣", "三", "๓":
//    possibleIntegerValue = 3
//case "4", "٤", "四", "๔":
//    possibleIntegerValue = 4
//default:
//    break
//}
//if let integerValue = possibleIntegerValue {
//    print("The integer value of \(numberSymbol) is \(integerValue).")
//} else {
//    print("An integer value could not be found for \(numberSymbol).")
//}
//// Prints "The integer value of 三 is 3."
//

while let line = readLine() {
    
}









