//: Playground - noun: a place where people can play

import Foundation

//func largest10Num(arr:[Int]) -> [Int] {
//    
//    if arr.count <= 1 {
//        return arr
//    }
//    
//    let middle = arr.count/2
//    let leftArray = largest10Num(arr: Array(arr[0..<middle]))
//    let rightArray = largest10Num(arr: Array(arr[middle..<arr.count]))
//    
//    return merge(leftPile: leftArray, rightPile: rightArray)
//}
//
//func merge(leftPile:[Int], rightPile:[Int]) -> [Int] {
//    
//    var leftIndex = 0
//    var rightIndex = 0
//    var orderedPile = [Int]()
//    
//    print("++++++++++++++++++")
//    
//    while leftIndex < leftPile.count && rightIndex < rightPile.count {
//            if leftPile[leftIndex] < rightPile[rightIndex] {
//                orderedPile.append(leftPile[leftIndex])
//                leftIndex += 1
//            }else if leftPile[leftIndex] > rightPile[rightIndex] {
//                orderedPile.append(rightPile[rightIndex])
//                rightIndex += 1
//            }
//    }
//    
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
//}
//
//print(largest10Num(arr: [2, 1, 5, 4, 9]))

public class ListNode<T> {
    var value: T
    var next: ListNode?
    weak var previous: ListNode?
    
    public init(value: T) {
        self.value = value
    }
}

public class LinkedList<T> {
    public typealias Node = ListNode<T>
    
    private var head: Node?
    
    public var isEmpty: Bool {
        return head == nil
    }
    
    public var first: Node? {
        return head
    }
}


class Solution {
    
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var carry = 0
        var answerNode = ListNode()
        
        while l1?.next != nil && l2?.next != nil {
            var sum = l1!.val + l2!.val + carry
            carry = sum > 9 ? 1 : 0
            let value = sum%10
            answerNode.insert(value: value)
        }
    }
}




























