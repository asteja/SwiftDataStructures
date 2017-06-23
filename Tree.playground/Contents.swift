//: Playground - noun: a place where people can play

import UIKit
import Foundation

class Node<T> {
    var value:T
    var leftChild:Node<T>?
    var rightChild:Node<T>?
    
    init(value:T) {
        self.value = value
    }
}

class Tree<T> {
    var root:Node<T>?
    
    var rootNode:Node<T> {
        return root!
    }
    
    func addChild(element:T) {
        let node:Node<T>? = Node(value: element)
        var tempRoot = rootNode
       
        if node?.value as! Int > tempRoot.value as! Int {
            while tempRoot.rightChild != nil {
                tempRoot = tempRoot.rightChild!
            }
            tempRoot.rightChild = node
        }else {
            while tempRoot.leftChild != nil {
                tempRoot = tempRoot.rightChild!
            }
            tempRoot.rightChild = node
        }
    }
    
    
}