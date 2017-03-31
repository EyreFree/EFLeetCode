//
//  258. Add Digits.swift
//  leetcode-swift+cpp
//
//  Created by Venpoo on 16/3/16.
//  Copyright © 2016年 eyrefree. All rights reserved.
//

import Foundation

class Solution258AddDigits {
    func addDigits(_ num: Int) -> Int {
        return (num - 1) % 9 + 1
    }
}
