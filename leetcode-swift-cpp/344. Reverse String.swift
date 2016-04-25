//
//  344. Reverse String.swift
//  leetcode-swift-cpp
//
//  Created by MBP on 16/4/25.
//  Copyright © 2016年 eyrefree. All rights reserved.
//

import Foundation

class Solution344ReverseString {
    func reverseString(s: String) -> String {
        var charsArray = [Character]()
        for character in s.characters {
            charsArray.append(character)
        }
        var i = 0, j = charsArray.count - 1
        while i < j {
            let temp = charsArray[j]
            charsArray[j--] = charsArray[i]
            charsArray[i++] = temp
        }
        return String(charsArray)
    }
}