//
//  338. Counting Bits.swift
//  leetcode-swift-cpp
//
//  Created by Venpoo on 16/3/23.
//  Copyright © 2016年 eyrefree. All rights reserved.
//

import Foundation

class Solution338CountingBits {
    func countBits(num: Int) -> [Int] {
        var result = Array<Int>()
        for number in 0...num {
            let tail = (number == 0 ? 0 : result[number / 2])
            result.append(number % 2 + tail)
        }
        return result
    }
}