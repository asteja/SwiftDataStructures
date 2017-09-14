//: Playground - noun: a place where people can play

import UIKit
import Foundation

class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
 }
 
class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var carry = 0
        var rootl1 = l1
        var rootl2 = l2
        var answerList:ListNode?
        var head:ListNode? = answerList
       
        while rootl1 != nil  {
            
            let ans = rootl1!.val + rootl2!.val + carry
            var answer:Int = 0
            if ans > 9 {
                carry = ans - 9
                answer = ans%10
            }
            
            if head == nil {
                answerList = ListNode(answer)
                head = answerList
            } else {
                let node = ListNode(ans)
                head!.next = node
                head = head!.next
            }
            
            rootl1 = rootl1?.next
            rootl2 = rootl2?.next
        }
        return answerList
    }
}