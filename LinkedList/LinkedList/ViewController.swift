//
//  ViewController.swift
//  LinkedList
//
//  Created by 辛忠翰 on 2018/10/25.
//  Copyright © 2018 辛忠翰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let linkedList = LinkedList<Int>()
    override func viewDidLoad() {
        super.viewDidLoad()
        linkedList.append(value: 2)
        linkedList.append(value: 1)
        linkedList.append(value: 5)
        linkedList.append(value: 7)
        print(linkedList.description)
        print(linkedList.isEmpty)
        print(linkedList.first?.value)
        print(linkedList.last?.value)
        print(linkedList.nodeAt(index: 9)?.value)
        guard let node2 = linkedList.nodeAt(index: 1)  else {return}
        print(linkedList.remove(node: node2))
        print(linkedList.description)
        print(linkedList.last?.value)
        print(linkedList.findNode(value: 7))
    }
}

