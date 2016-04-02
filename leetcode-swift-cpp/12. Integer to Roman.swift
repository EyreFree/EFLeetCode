//
//  12. Integer to Roman.swift
//  leetcode-swift-cpp
//
//  Created by EyreFree on 16/4/2.
//  Copyright © 2016年 eyrefree. All rights reserved.
//

import Foundation

class Solution12IntegertoRoman {
    func intToRoman(num: Int) -> String {
        let g = ["", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"]
        let s = ["", "X", "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC"]
        let b = ["", "C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM"]
        let q = ["", "M", "MM", "MMM"]
        let num_10 = num / 10
        let num_100 = num_10 / 10
        let num_1000 = num_100 / 10
        return q[num_1000] + b[num_100 % 10] + s[num_10 % 10] + g[num % 10]
    }
}