//
//  121. Best Time to Buy and Sell Stock.swift
//  leetcode-swift-cpp
//
//  Created by MBP on 16/4/16.
//  Copyright © 2016年 eyrefree. All rights reserved.
//

import Foundation

class Solution121BestTimetoBuyandSellStock {
    func maxProfit(prices: [Int]) -> Int {
        var maxPro = 0
        var minPrice = Int.max
        for i in 0..<prices.count {
            minPrice = min(minPrice, prices[i])
            maxPro = max(prices[i] - minPrice, maxPro)
        }
        return maxPro
    }
}