//
//  N-Queens II.swift
//  leetcode-swift-cpp
//
//  Created by EyreFree on 16/3/25.
//  Copyright © 2016年 eyrefree. All rights reserved.
//

import Foundation

//N 皇后问题，这题真没看懂，对着讨论组贴的答案写了 Swift 版
class Solution52NQueensII {
    var result = 0

    func totalNQueens(n: Int) -> Int {
        var column = Array<Bool>(count: n, repeatedValue: false)
        var dia45 = Array<Bool>(count: 2 * n - 1, repeatedValue: false)
        var dia135 = Array<Bool>(count: 2 * n - 1, repeatedValue: false)
        helper(0, n: n, column: &column, dia45: &dia45, dia135: &dia135)
        return result
    }

    func helper(row: Int, n: Int, inout column: Array<Bool>, inout dia45: Array<Bool>, inout dia135: Array<Bool>) {
        if row == n {
            ++result
            return
        }
        for var col: Int = 0; col < n; ++col {
            if (!column[col] && !dia45[col + row] && !dia135[n - 1 - row + col]) {
                column[col] = true
                dia45[col + row] = true
                dia135[n - 1 - row + col] = true

                helper(row + 1, n: n, column: &column, dia45: &dia45, dia135: &dia135)

                column[col] = false
                dia45[col + row] = false
                dia135[n - 1 - row + col] = false
            }
        }
    }
}