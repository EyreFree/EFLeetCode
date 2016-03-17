//
//  169. Majority Element.swift
//  leetcode-swift-cpp
//
//  Created by Venpoo on 16/3/17.
//  Copyright © 2016年 eyrefree. All rights reserved.
//

import Foundation

class Solution169MajorityElement {
    func majorityElement(nums: [Int]) -> Int {
        var majEle = nums[0]
        var majCount = 0

        for num in nums {
            if majCount == 0 {
                majEle = num
                majCount = 1
            } else if num == majEle {
                ++majCount
            } else {
                --majCount
            }
        }

        return majEle
    }
}