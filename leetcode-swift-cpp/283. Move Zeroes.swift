//
//  283. Move Zeroes.swift
//  leetcode-swift-cpp
//
//  Created by EyreFree on 16/4/24.
//  Copyright © 2016年 eyrefree. All rights reserved.
//

import Foundation

class Solution283MoveZeroes {
    func moveZeroes(inout nums: [Int]) {
        for var i: Int = 1, j: Int = 0; i < nums.count; ++i {
            if 0 != nums[j] {
                ++j
            } else if 0 != nums[i] {
                nums[j] = nums[i]
                nums[i] = 0
                ++j
            }
        }
    }
}