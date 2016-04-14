//
//  326. Power of Three.swift
//  leetcode-swift-cpp
//
//  Created by MBP on 16/4/14.
//  Copyright © 2016年 eyrefree. All rights reserved.
//

import Foundation

class Solution326PowerofThree {
    func isPowerOfThree(n: Int) -> Bool {
        let Max3PowerInt = 1162261467 // 3^19
        return n <= 0 || n > Max3PowerInt ? false : Max3PowerInt % n == 0;
    }
}