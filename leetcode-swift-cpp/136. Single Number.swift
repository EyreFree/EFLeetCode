//
//  136. Single Number.swift
//  leetcode-swift+cpp
//
//  Created by Venpoo on 16/3/16.
//  Copyright © 2016年 eyrefree. All rights reserved.
//

import Foundation

class Solution136SingleNumber {
    func singleNumber(_ nums: [Int]) -> Int {
        var rtn = 0
        for num in nums {
            rtn = rtn ^ num
        }
        return rtn
    }
}
