//: Playground - noun: a place where people can play

import UIKit

class BTreeNode<T> {
    var value:T
    var leftChild:BTreeNode?
    var rightCHild:BTreeNode?
    
    init(value:T) {
        self.value = value
    }
}

class BTree<T> {
    var root:BTreeNode<T>?
    
    func insert(value:T) {
        var node = BTreeNode(value: value)
        
    }
    
    
    func recursive(newNode:BTreeNode<T>) {
        
        var node = root
        
        if (newNode.value as! Int) < (node?.value as! Int) {
            if node?.leftChild != nil {
                node = node?.leftChild
            }
        }
    }
}