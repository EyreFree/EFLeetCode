//
//  122. Best Time to Buy and Sell Stock II.swift
//  leetcode-swift-cpp
//
//  Created by Venpoo on 16/3/17.
//  Copyright © 2016年 eyrefree. All rights reserved.
//

import Foundation

class Solution122BestTimetoBuyandSellStockII {
    func maxProfit(_ prices: [Int]) -> Int {
        let len = prices.count
        var rtn = 0
        if len > 1 {
            for i: Int in 1 ..< len += 1 {
                let dis = prices[i] - prices[i - 1]
                rtn += (dis > 0 ? dis : 0)
            }
        }
        return rtn
    }
}
