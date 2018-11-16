//
//  Queue.swift
//  Queue
//
//  Created by 辛忠翰 on 2018/10/26.
//  Copyright © 2018 辛忠翰. All rights reserved.
//

import Foundation
struct Queue<T: Comparable> {
    fileprivate var list = LinkedList<T>()
    
    public func enqueue(node: Node<T>){
        list.append(node: node)
    }
    
    public func dequeue() -> Node<T>?{
        guard !list.isEmpty, let node = list.first else {return nil}
        _ = list.remove(node: node)
        return node
    }
    
    public func peek() -> Node<T>?{
        return list.last
    }
    
    public func isEmpty() -> Bool{
        return list.isEmpty
    }
}

extension Queue: CustomStringConvertible{
    var description: String{
        return list.description
    }
}
