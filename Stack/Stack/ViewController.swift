//
//  ViewController.swift
//  Stack
//
//  Created by 辛忠翰 on 2018/10/25.
//  Copyright © 2018 辛忠翰. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    var stack = Stack<Any>()
    override func viewDidLoad() {
        super.viewDidLoad()
        stack.push(element: "Cool")
        stack.push(element: "App")
        stack.push(element: 9)
        print(stack.peek())
        print(stack.pop())
        print(stack.description)
        print(stack.checkCount())
        print(stack.checkIsEmpty())
    }
}

