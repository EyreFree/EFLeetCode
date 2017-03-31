//
//  263. Ugly Number.swift
//  leetcode-swift-cpp
//
//  Created by MBP on 16/4/11.
//  Copyright © 2016年 eyrefree. All rights reserved.
//

import Foundation

class Solution263UglyNumber {
    func isUgly(_ num: Int) -> Bool {
        if 0 != num {
            var numNow = num
            while true {
                var cando = false
                for ele in [2, 3, 5] {
                    if canDo(numNow, todo: ele) {
                        numNow = numNow / ele
                        cando = true
                    }
                }
                if !cando {
                    break
                }
            }
            return numNow == 1
        }
        return false
    }

    func canDo(_ num: Int, todo: Int) -> Bool {
        let test = num / todo
        return test * todo == num
    }
}
