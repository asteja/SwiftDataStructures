//: Playground - noun: a place where people can play

import UIKit
import Foundation

//class Queue<Element> {
//    var queue = [Element]()
//    
//    func insert(element:Element){
//        queue.append(element)
//    }
//    
//    
//    func delete()->Element {
//        return queue.remove(at: 0)
//    }
//    
//    
//}
//
//var queue = Queue<Int>()
//
//queue.insert(element: 6)
//queue.insert(element: 9)
//queue.insert(element: 16)
//queue.insert(element: 46)
//
//print(queue.queue)
//
//queue.delete()
//
//print(queue.queue)
//
//
//
//class Deque<DequeElement> {
//    
//    var elements = [DequeElement]()
//    
//    func addFirst(element:DequeElement) {
//        elements.insert(element, at: 0)
//    }
//    
//    func addLast(element:DequeElement) {
//        elements.append(element)
//    }
//    
//    func removeFirst()->DequeElement {
//        return elements.remove(at: 0)
//    }
//    
//    func removeLast()->DequeElement {
//        return elements.popLast()!
//    }
//}
//
//var deque = Deque<Int>()
//
//deque.addLast(element: 9)
//deque.addLast(element: 80)
//deque.addLast(element: 87)
//deque.addLast(element: 99)
//deque.addFirst(element: 100)
//
//print(deque.elements)
//
//deque.removeFirst()
//deque.removeFirst()
//deque.removeLast()
//
//print(deque.elements)
//
//

//class Node<TreeElement> {
//    var parent: Node?
//    var nodeValue:TreeElement?
//    var childElement:[Node]?
//    
//    init(value: TreeElement) {
//        self.nodeValue = value
//    }
//}
//
//
//class Tree<TreeElement> {
//    var values = [Node<TreeElement>]()
//    var node:Node<TreeElement>?
//    
//    func insertChild(element:TreeElement, parent: Node<TreeElement>) {
//        node = Node(value: element)
//        node!.parent = parent
//        node?.parent?.childElement?.append(node!)
//        values.append(node!)
//    }
//}
//
//var tree = Tree<Int>()
//var node = Node(value: 80)
//
//tree.insertChild(element: 30, parent: node)
//
//print(tree.values)
//
//print(tree.values[0].parent!.nodeValue!)
//
//tree.insertChild(element: 60, parent: tree.values[0])
//
//print(tree.values[1].parent!.nodeValue!)
//
//tree.insertChild(element: 70, parent: node)
//
//print(tree.values[2].parent!.nodeValue!)
//
//print(tree.values)
//








public class TreeNode<T> {
    public var value: T
    
    public weak var parent: TreeNode?
    public var children = [TreeNode<T>]()
    
    public init(value: T) {
        self.value = value
    }
    
    public func addChild(_ node: TreeNode<T>) {
        children.append(node)
        node.parent = self
    }
}

extension TreeNode: CustomStringConvertible {
    public var description: String {
        var s = "\(value)"
        if !children.isEmpty {
            s += " {" + children.map { $0.description }.joined(separator: ", ") + "}"
        }
        return s
    }
}



extension TreeNode where T: Equatable {
    public func search(_ value: T) -> TreeNode? {
        if value == self.value {
            return self
        }
        for child in children {
            if let found = child.search(value) {
                return found
            }
        }
        return nil
    }
}



let tree = TreeNode<String>(value: "beverages")

let hotNode = TreeNode<String>(value: "hot")
let coldNode = TreeNode<String>(value: "cold")

tree.addChild(hotNode)
tree.addChild(coldNode)
print(tree.search("hot"))

print(tree.description)




print(rootElement.description)


