//: Playground - noun: a place where people can play

import UIKit
import Foundation

class LinkedListNode<T> {
    
    var value:T?
    var nextNode:LinkedListNode?
    var prevNode:LinkedListNode?
    
    init(value:T) {
        self.value = value
    }
}

class LinkedList<T> {
    var head:LinkedListNode<T>?
    
    func first()->LinkedListNode<T> {
        return head!
    }
    
    func last()->LinkedListNode<T> {
        var lastNode:LinkedListNode<T>?
        if var node = head {
            while let next = node.nextNode {
                node = next
            }
            lastNode = node
        }
        return lastNode!
    }
    
    
    func addElement(value:T) {
        let node = LinkedListNode(value: value)
        
        if head?.nextNode == nil {
            head?.nextNode = node
            node.prevNode = head
        }else {
            let lastNode = last()
            lastNode.nextNode = node
            node.prevNode = lastNode
        }
    }
    
    var description : String {
        var s = "\(head!.value!)"
        
        if var node = head?.nextNode {
            s += "->" + "\(node.value!)->"
            while let nextNode = node.nextNode {
                s += "\(nextNode.value!)->"
                node = nextNode
            }
            s += "nil"
        }
        
        return s
    }
    
    func search(element:Int) -> String {
        
        var node = head
        
        guard node?.value as! Int != element else {
            return "Foumd im head"
        }
        
        while let currentNode = node?.nextNode {
            if currentNode.value as! Int == element {
                return "found->\(currentNode.value)"
            }
            node = node?.nextNode
        }
        
        return "Not Found"
    }
    
    
    func remove(element:Int) {
        
        var node = head
        
        if node?.value as! Int == element {
            head = head?.nextNode
        }
        
        while let currentNode = node?.nextNode {
            if currentNode.value as! Int == element {
                currentNode.prevNode?.nextNode = currentNode.nextNode
            }
            node = node?.nextNode
        }
    
    }
    
    func insertAt(index:Int, element:T) {
        var node = head
        var count = 0
        
        while let currentNode = node {
            if count == index {
                let insertNode = LinkedListNode(value: element)
                insertNode.nextNode = currentNode.nextNode
                currentNode.nextNode = insertNode
            }
            count += 1
            node = node?.nextNode
        }
    }
    
    
}

var head = LinkedListNode(value: 30)

var list = LinkedList<Int>()

list.head = head

list.addElement(value: 40)

list.addElement(value: 50)

list.addElement(value: 78)

print(list.search(element: 78))

list.remove(element: 50)

print(list.description)

list.insertAt(index: 1, element: 88)

print(list.description)

