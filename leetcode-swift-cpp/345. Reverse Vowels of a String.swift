//
//  345. Reverse Vowels of a String.swift
//  leetcode-swift-cpp
//
//  Created by MBP on 16/4/26.
//  Copyright © 2016年 eyrefree. All rights reserved.
//

import Foundation

class Solution345ReverseVowelsofaString {
    func reverseVowels(_ s: String) -> String {
        var charsArray = [Character](s.characters)
        var i = 0, j = charsArray.count - 1
        while i < j {
            i = find_first_of(charsArray, index: i)
            j = find_last_of(charsArray, index: j)
            if i < j {
                let temp = charsArray[j]
                charsArray[j--] = charsArray[i]
                charsArray[i++] = temp
            }
        }
        return String(charsArray)
    }

    func find_first_of(_ chars: [Character], index: Int) -> Int {
        if index < chars.count {
            for i in index..<chars.count {
                if isVowels(chars[i]) {
                    return i
                }
            }
        }
        return chars.count
    }

    func find_last_of(_ chars: [Character], index: Int) -> Int {
        if index > -1 {
            for var i: Int = index; i >= 0; i -= 1 {
                if isVowels(chars[i]) {
                    return i
                }
            }
        }
        return -1
    }

    func isVowels(_ char: Character) -> Bool {
        let vowelsChars: [Character] = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
        for vowelschar in vowelsChars {
            if vowelschar == char {
                return true
            }
        }
        return false
    }
}
