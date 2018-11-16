//
//  Stack.swift
//  Stack
//
//  Created by 辛忠翰 on 2018/10/25.
//  Copyright © 2018 辛忠翰. All rights reserved.
//

struct Stack<T>{
    fileprivate var array: [T] = []
    fileprivate var isEmpty: Bool{
        return array.isEmpty
    }
    fileprivate var count: Int{
        return array.count
    }
    mutating func push(element: T) {
        array.append(element)
    }
    mutating func pop() -> T?{
        return array.popLast()
    }
    func peek() -> T?{
        return array.last
    }
    func checkIsEmpty() -> Bool{
        return isEmpty
    }
    func checkCount() -> Int{
        return count
    }
}

extension Stack: CustomStringConvertible{
    var description: String{
        let topDivider = "----Stack----\n"
        let bottomDevider = "\n-----------\n"
        let stackElements = self.array.reversed().map{ "\($0)" }.joined(separator: "\n")
        return topDivider + stackElements + bottomDevider
    }
}
