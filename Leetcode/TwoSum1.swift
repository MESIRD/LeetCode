//
//  TwoSum1.swift
//  Leetcode
//
//  Created by mesird on 23/05/2017.
//  Copyright © 2017 mesird. All rights reserved.
//

import Cocoa

class TwoSum1: NSObject {
    
    func function(_ nums: [Int], _ target: Int) -> [Int] {
        for i in 0..<nums.count {
            let another = target - nums[i]
            for j in 0..<nums.count {
                if i == j {
                    continue
                }
                if another == nums[j] {
                    return [i,j]
                }
            }
        }
        return []
    }
}
