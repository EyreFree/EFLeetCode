//
//  27. Remove Element.swift
//  leetcode-swift-cpp
//
//  Created by MBP on 16/5/18.
//  Copyright © 2016年 eyrefree. All rights reserved.
//

import Foundation

class Solution27RemoveElement {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        let count = nums.count
        for var i = count - 1; i >= 0; i -= 1 {
            if nums[i] == val {
                nums.remove(at: i)
            }
        }
        return nums.count
    }
}
