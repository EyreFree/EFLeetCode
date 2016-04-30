//
//  343.cpp
//  leetcode-swift-cpp
//
//  Created by EyreFree on 16/4/30.
//  Copyright © 2016年 eyrefree. All rights reserved.
//

#include <stdio.h>

class Solution343IntegerBreak {
public:
    int integerBreak(int n) {
        switch (n) {
            case 2:
                return 1;
            case 3:
                return 2;
            case 4:
                return 4;
            default:
                return f(n);
        }
    }

    int f(int n) {
        switch (n) {
            case 2:
            case 3:
            case 4:
                return n;
            default:
                return 3 * f(n - 3);
        }
    }
};