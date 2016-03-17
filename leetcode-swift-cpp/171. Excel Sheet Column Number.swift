//
//  171. Excel Sheet Column Number.swift
//  leetcode-swift-cpp
//
//  Created by Venpoo on 16/3/17.
//  Copyright © 2016年 eyrefree. All rights reserved.
//

import Foundation

class Solution171ExcelSheetColumnNumber {
    func titleToNumber(s: String) -> Int {
        let len = s.characters.count
        var amount = 0
        var turn = 0
        let baseCharacter: Character = "A"
        for ele in s.characters {
            ++turn
            amount += (
                (char2Int(ele) - char2Int(baseCharacter) + 1) *
                    Int(pow(26, Double(len - turn)))
            )
        }
        return Int(amount)
    }

    func char2Int(character: Character) -> Int {
        var rtn = 0
        for scalar in String(character).unicodeScalars {
            rtn = Int(scalar.value)
        }
        return rtn
    }
}