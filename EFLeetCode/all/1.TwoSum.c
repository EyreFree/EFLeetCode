//
//  1.TwoSum.c
//  EFLeetCode
//
//  Created by EyreFree on 2017/9/19.
//  Copyright © 2017年 eyrefree. All rights reserved.
//
//  https://leetcode.com/problems/two-sum/description/
//

#include <stdio.h>
#include <stdlib.h>

/**
 * Note: The returned array must be malloced, assume caller calls free().
 */
int* twoSum(int* nums, int numsSize, int target) {
    int* rtn = (int *)malloc(sizeof(int) * 2);
    if (numsSize > 2) {
        for(int i = 0; i < numsSize - 1; ++i) {
            int targetJ = target - nums[i];
            for(int j = i + 1; j < numsSize; ++j) {
                if (nums[j] == targetJ) {
                    rtn[0] = i;
                    rtn[1] = j;
                    return rtn;
                }
            }
        }
    }
    rtn[0] = 0;
    rtn[1] = 1;
    return rtn;
}
