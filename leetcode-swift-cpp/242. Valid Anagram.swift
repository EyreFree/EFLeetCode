//
//  242. Valid Anagram.swift
//  leetcode-swift-cpp
//
//  Created by Venpoo on 16/3/17.
//  Copyright © 2016年 eyrefree. All rights reserved.
//

import Foundation

class Solution242ValidAnagram {
    func isAnagram(s: String, _ t: String) -> Bool {
        if s.characters.count != t.characters.count {
            return false
        }
        return sortString(s) == sortString(t)
    }

    func sortString(input: String) -> String {
        return String(Array(input.characters).sort())
    }
}