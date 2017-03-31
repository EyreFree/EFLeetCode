//
//  283. Move Zeroes.swift
//  leetcode-swift-cpp
//
//  Created by EyreFree on 16/4/24.
//  Copyright © 2016年 eyrefree. All rights reserved.
//

import Foundation

class Solution283MoveZeroes {
    func moveZeroes(_ nums: inout [Int]) {
        for var i: Int = 1, j: Int = 0; i < nums.count; i += 1 {
            if 0 != nums[j] {
                j += 1
            } else if 0 != nums[i] {
                nums[j] = nums[i]
                nums[i] = 0
                j += 1
            }
        }
    }
}
