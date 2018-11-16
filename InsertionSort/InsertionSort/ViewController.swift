//
//  ViewController.swift
//  InsertionSort
//
//  Created by 辛忠翰 on 2018/10/27.
//  Copyright © 2018 辛忠翰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let array = ["a", "c", "b", "g", "d"]
    override func viewDidLoad() {
        super.viewDidLoad()
//        insertionSortSwapVersion(array: array)
        print(insertionSortShiftVersion(array: array))
        
    }


}

extension ViewController{
    fileprivate func insertionSortSwapVersion<T: Comparable>(array: [T]) -> [T]{
        var a = array
        for index in 1 ..< a.count{
            var y = index
            while y>0 && a[y]<a[y-1]{
                a.swapAt(y-1, y)
                y -= 1
            }
        }
        return a
    }
    
    fileprivate func insertionSortShiftVersion<T: Comparable>(array: [T]) -> [T]{
        var a = array
        for index in 1 ..< a.count{
            var y = index
            let currentElement = a[y]
            while y>0 && currentElement<a[y-1]{
                a[y] = a[y-1]
                y -= 1
            }
            a[y] = currentElement
        }
        return a
    }
}
