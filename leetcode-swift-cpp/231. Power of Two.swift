//
//  231. Power of Two.swift
//  leetcode-swift-cpp
//
//  Created by MBP on 16/4/13.
//  Copyright © 2016年 eyrefree. All rights reserved.
//

import Foundation

class Solution231PowerofTwo {
    func isPowerOfTwo(_ n: Int) -> Bool {
        if 0 < n {
            if 0 == (n & (n - 1)) {
                return true
            }
        }
        return false
    }
}
