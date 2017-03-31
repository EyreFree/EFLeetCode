//
//  287. Find the Duplicate Number.swift
//  leetcode-swift-cpp
//
//  Created by Venpoo on 16/3/28.
//  Copyright © 2016年 eyrefree. All rights reserved.
//

import Foundation

class Solution287FindtheDuplicateNumber {
    func findDuplicate(_ nums: [Int]) -> Int {
        var sortedNums = Array(nums)
        sortedNums.sort(by: {$0 > $1})
        var duplicateNum = 0
        for i: Int in 0 ..< sortedNums.count - 1 += 1 {
            if sortedNums[i] == sortedNums[i + 1] {
                duplicateNum = sortedNums[i]
                break
            }
        }
        return duplicateNum
    }
}
