//
//  PlusMinus.swift
//  Challenge-Practice
//
//  Created by Fady Ramzy on 09/11/2022.
// 

import Foundation


func plusMinus(arr: [Int]) -> Void {
    let arrayCount = Double(arr.count)
    var postiveNumbers: Double = 0.0
    var negativeNumbers: Double = 0.0
    var zeros: Double = 0.0

    arr.forEach {
        if $0 < 0 {
            negativeNumbers += 1.0
        } else if $0 == 0 {
            zeros += 1.0
        } else if $0 > 0 {
            postiveNumbers += 1.0
        }
    }

    print(String(format: "%.6f", postiveNumbers / arrayCount))
    print(String(format: "%.6f", negativeNumbers / arrayCount))
    print(String(format: "%.6f", zeros / arrayCount))
}
