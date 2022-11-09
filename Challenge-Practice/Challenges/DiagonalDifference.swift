//
//  DiagonalDifference.swift
//  Challenge-Practice
//
//  Created by Fady Ramzy on 08/11/2022.
//
// Problem link: https://www.hackerrank.com/challenges/diagonal-difference

import Foundation

func diagonalDifference(arr: [[Int]]) -> Int {
    var sum1: Int = 0
    var sum2: Int = 0
    var reverseCount = arr.count - 1

    for index in 0..<arr.count {
        sum1 += arr[index][index]
        sum2 += arr[index][reverseCount]
        reverseCount-=1
    }

    return abs(sum1 - sum2)
}
