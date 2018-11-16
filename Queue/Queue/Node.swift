//
//  Node.swift
//  Queue
//
//  Created by 辛忠翰 on 2018/10/26.
//  Copyright © 2018 辛忠翰. All rights reserved.
//

import Foundation
class Node<T> {
    var value: T
    var next: Node<T>?
    weak var previous: Node<T>?
    init(value: T) {
        self.value = value
    }
}
