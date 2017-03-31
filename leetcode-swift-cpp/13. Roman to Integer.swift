//
//  13. Roman to Integer.swift
//  leetcode-swift-cpp
//
//  Created by Venpoo on 16/3/25.
//  Copyright © 2016年 eyrefree. All rights reserved.
//

import Foundation

class Solution13RomantoInteger {
    let dictOfRomanAndInt: [Character : Int] = [
        "I" : 1,
        "V" : 5,
        "X" : 10,
        "L" : 50,
        "C" : 100,
        "D" : 500,
        "M" : 1000,
    ]

    func romanToInt(_ s: String) -> Int {
        let reversedInput = s.characters.reversed()
        var preValue = 0
        return reversedInput.reduce(0) {
            (currentValue, chn) -> Int in
            guard let arabicNum = dictOfRomanAndInt[chn] else {
                return currentValue
            }
            let totalValue = (preValue > arabicNum) ? (currentValue - arabicNum) : (currentValue + arabicNum)
            preValue = arabicNum
            return totalValue
        }
    }
}
