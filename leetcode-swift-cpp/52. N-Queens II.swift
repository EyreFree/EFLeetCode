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

    func totalNQueens(_ n: Int) -> Int {
        var column = Array<Bool>(repeating: false, count: n)
        var dia45 = Array<Bool>(repeating: false, count: 2 * n - 1)
        var dia135 = Array<Bool>(repeating: false, count: 2 * n - 1)
        helper(0, n: n, column: &column, dia45: &dia45, dia135: &dia135)
        return result
    }

    func helper(_ row: Int, n: Int, column: inout Array<Bool>, dia45: inout Array<Bool>, dia135: inout Array<Bool>) {
        if row == n {
            result += 1
            return
        }
        for col: Int in 0 ..< n += 1 {
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
