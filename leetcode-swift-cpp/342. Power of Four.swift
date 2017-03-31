//
//  342. Power of Four.swift
//  leetcode-swift-cpp
//
//  Created by MBP on 16/4/18.
//  Copyright © 2016年 eyrefree. All rights reserved.
//

import Foundation

class Solution342PowerofFour {
    func isPowerOfFour(_ num: Int) -> Bool {
        var todo = num
        while (todo != 0) && (todo % 4 == 0) {
            todo /= 4
        }
        return todo == 1
    }
}
