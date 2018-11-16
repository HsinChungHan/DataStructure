//
//  LinkedList.swift
//  LinkedList
//
//  Created by 辛忠翰 on 2018/10/25.
//  Copyright © 2018 辛忠翰. All rights reserved.
//

import Foundation
class LinkedList<T: Comparable> {
    fileprivate var headNode: Node<T>?
    fileprivate var tailNode: Node<T>?
    
    public var isEmpty: Bool{
        return headNode == nil
    }
    
    public var first: Node<T>?{
        return headNode
    }
    
    public var last: Node<T>?{
        return tailNode
    }
    
    public func append(value: T){
        let newNode = Node.init(value: value)
        if let tailNode = tailNode{
            newNode.previous = tailNode
            tailNode.next = newNode
        }else{
            headNode = newNode
        }
        tailNode = newNode
    }
    
    public func nodeAt(index: Int) -> Node<T>?{
        if index >= 0{
            var node = headNode
            var nodeIndex = 0
            while node != nil{
                if nodeIndex == index{
                    return node
                }
                node = node?.next
                nodeIndex += 1
            }
        }
        return nil
    }
    
    public func findNode(value: T) -> Int?{
        var index = 0
        var node = nodeAt(index: index)
        while node != nil{
            if node!.value == value{
                return index
            }
            index += 1
            node = nodeAt(index: index)
        }
        return nil
    }
    
    
    public func removeAll(){
        headNode = nil
        tailNode = nil
    }
    
    public func remove(node: Node<T>) -> T{
        let preNode = node.previous
        let nextNode = node.next
        
        if let preNode = preNode{
            //移除的node為middle的情況
            preNode.next = nextNode
//            nextNode?.previous = preNode
        }else{
            //移除的node為head的情況
            headNode = nextNode
//            nextNode?.previous = nil
        }
        nextNode?.previous = preNode

        if nextNode == nil{
            //移除node為tail的情況
            tailNode = preNode
            preNode?.next = nil
        }
        
        //斷掉此node的節點
        node.previous = nil
        node.next = nil
        
        return node.value
    }
}

extension LinkedList: CustomStringConvertible{
    var description: String{
        var text = "["
        var node = headNode
        while node != nil {
            text += "\(node!.value)"
            node = node!.next
            if node != nil {
                text += ", "
            }
        }
        return text + "]"
    }
}
