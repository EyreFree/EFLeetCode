//
//  35. Search Insert Position.swift
//  leetcode-swift-cpp
//
//  Created by MBP on 16/4/6.
//  Copyright © 2016年 eyrefree. All rights reserved.
//

import Foundation

class Solution35SearchInsertPosition {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        for (index, value) in nums.enumerated() {
            if value == target {
                return index
            } else if target < value {
                return index
            }
        }
        return nums.count
    }
}
