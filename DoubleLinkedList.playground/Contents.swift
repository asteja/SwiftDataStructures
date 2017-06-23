//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Node<T> {
    var value:T
    var nextNode:Node?
    var prevNode:Node?
    
    init(value:T) {
        self.value = value
    }
}


class DoubleLinkedList<T> {
    var head:Node<T>?
    
    var firstNode:Node<T> {
        return head!
    }
    
    var lastNode:Node<T> {
        var node = firstNode
        while node.nextNode != nil {
            node = node.nextNode!
        }
       return node
    }
    
    func addElement(element:T) {
        
        let newNode = Node(value: element)
        var node = firstNode
        
        guard node.nextNode != nil else {
            return node.nextNode = newNode
        }
        
        while node.nextNode != nil {
            node = node.nextNode!
            if node.nextNode == nil {
                node.nextNode = newNode
            }

        }
    }
    
    func insertAt(index:Int, element:T) {
        let count = 0
        var node = firstNode
        let newNode = Node(value: element)
        
        while count == index {
            node = node.nextNode!
        }
        
        newNode.prevNode = node
        newNode.nextNode = node.nextNode
        node.nextNode = newNode
    }
    
    public var description:String {
        var node = firstNode
        var s = "\(firstNode.value)"
        while node.nextNode != nil {
            s += "->"+"\(node.nextNode!.value)"
            node = node.nextNode!
        }
        s += "->nil"
        return s
    }
    
    func search(element:T) -> Node<T> {
        var node = firstNode
        
        while node.nextNode != nil {
            if node.value as! Int == element as! Int {
                return node
            }
            node = node.nextNode!
        }
        return node
    }
    
    func remove(element:T) {
        let node = search(element: element)
        if node.nextNode != nil {
            node.prevNode?.nextNode = node.nextNode
        }else {
            node.prevNode?.nextNode = nil
        }
    }
}

var node = Node(value: 12)

var dList = DoubleLinkedList<Int>()
dList.head = node

dList.addElement(element: 13)

print(dList.description)

dList.insertAt(index: 1, element: 14)

print(dList.description)

dList.remove(element: 14)

print(dList.description)

