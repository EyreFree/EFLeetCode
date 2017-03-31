//
//  318. Maximum Product of Word Lengths.swift
//  leetcode-swift-cpp
//
//  Created by Venpoo on 16/3/21.
//  Copyright © 2016年 eyrefree. All rights reserved.
//

import Foundation

//复杂度过高的版本，未通过
//class Solution318MaximumProductofWordLengths {
//    func maxProduct(words: [String]) -> Int {
//        var mask = [Int](count: words.count, repeatedValue: 0)
//        var result = 0
//        let baseCharacter: Character = "a"
//        for var i: Int = 0; i < words.count; ++i {
//            for char in words[i].characters {
//                mask[i] = mask[i] | (1 << (char2Int(char) - char2Int(baseCharacter)))
//            }
//            for var j: Int = 0; j < i; ++j {
//                if 0 == (mask[i] & mask[j]) {
//                    result = max(result, words[i].characters.count * words[j].characters.count)
//                }
//            }
//        }
//        return result
//    }
//
//    func char2Int(character: Character) -> Int {
//        var result = 0
//        for scalar in String(character).unicodeScalars {
//            result = Int(scalar.value)
//        }
//        return result
//    }
//}

class Solution318MaximumProductofWordLengths {
    func maxProduct(_ words: [String]) -> Int {
        var maxCount = Dictionary<Int, Int>()
        let baseCharacter: Character = "a"
        for i: Int in 0 ..< words.count += 1 {
            var mask = 0
            for char in words[i].characters {
                mask = mask | (1 << (char2Int(char) - char2Int(baseCharacter)))
            }
            maxCount.updateValue(max(maxCount[mask] ?? 0, words[i].characters.count), forKey: mask)
        }

        var result = 0
        for eleA in maxCount {
            for eleB in maxCount {
                if 0 == eleA.0 & eleB.0 {
                    result = max(result, eleA.1 * eleB.1)
                }
            }
        }
        return result
    }

    func char2Int(_ character: Character) -> Int {
        var rtn = 0
        for scalar in String(character).unicodeScalars {
            rtn = Int(scalar.value)
        }
        return rtn
    }
}
