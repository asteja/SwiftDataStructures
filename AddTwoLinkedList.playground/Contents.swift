//: Playground - noun: a place where people can play

class Node {
    var nextNode:Node?
    var value:Int?
    
    init(number:Int) {
        self.value = number % 10
    }
}

class Solution {
    
    func addTwoNumbers(_ l1: Node?, _ l2: Node?) -> Node?  {
        
        var firstNode = l1
        var secondNode = l2
        var prev = Node(number: 0)
        let head = prev
        var carry:Int = 0
        
        while firstNode != nil || secondNode != nil || carry != 0 {
            let cur = Node(number: 0)
            let sum = ((secondNode == nil) ? 0 : secondNode!.value!) + ((firstNode == nil) ? 0 : firstNode!.value!) + carry
            cur.value = sum % 10;
            carry = sum / 10;
            prev.nextNode = cur;
            prev = cur;
            
            firstNode = (firstNode == nil) ? firstNode : firstNode!.nextNode;
            secondNode = (secondNode == nil) ? secondNode : secondNode!.nextNode;
        }
        return head.nextNode!;
    }
    
}

var firstRoot = Node(number: 2)
firstRoot.nextNode = Node(number: 8)//382
firstRoot.nextNode!.nextNode = Node(number: 3)

var secondRoot = Node(number: 9)
secondRoot.nextNode = Node(number: 9)//499
secondRoot.nextNode!.nextNode = Node(number: 4)

var s = Solution()
var answerNode:Node? = s.addTwoNumbers(firstRoot, secondRoot)

while answerNode != nil {
    print(answerNode!.value!)
    answerNode = answerNode!.nextNode
}



