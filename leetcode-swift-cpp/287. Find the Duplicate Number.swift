//
//  287. Find the Duplicate Number.swift
//  leetcode-swift-cpp
//
//  Created by Venpoo on 16/3/28.
//  Copyright © 2016年 eyrefree. All rights reserved.
//

import Foundation

class Solution287FindtheDuplicateNumber {
    func findDuplicate(nums: [Int]) -> Int {
        var sortedNums = Array(nums)
        sortedNums.sortInPlace({$0 > $1})
        var duplicateNum = 0
        for var i: Int = 0; i < sortedNums.count - 1; ++i {
            if sortedNums[i] == sortedNums[i + 1] {
                duplicateNum = sortedNums[i]
                break
            }
        }
        return duplicateNum
    }
}