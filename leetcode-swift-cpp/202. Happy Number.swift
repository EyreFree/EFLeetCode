//
//  202. Happy Number.swift
//  leetcode-swift-cpp
//
//  Created by MBP on 16/4/12.
//  Copyright © 2016年 eyrefree. All rights reserved.
//

import Foundation

class Solution202HappyNumber {
    func isHappy(n: Int) -> Bool {
        var test = n
        var res = [Int]()

        while (true) {
            var sum = 0
            let digs = getDigs(test)
            for dig in digs {
                sum += dig * dig
            }
            if sum == 1 {
                return true
            } else if res.contains(sum) {
                return false
            }
            res.append(sum)
            test = sum
        }
    }

    func getDigs(n: Int) -> [Int] {
        return n != 0 ? [n % 10] + getDigs(n / 10) : []
    }
}