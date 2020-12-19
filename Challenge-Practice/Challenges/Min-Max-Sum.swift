//
//  Min-Max-Sum.swift
//  Challenge-Practice
//
//  Created by Fady Ramzy on 12/15/20.

// This challenge powered by: HackerRank
// Challenge link: https://www.hackerrank.com/challenges/mini-max-sum/problem?h_r=internal-search

import Foundation

func miniMaxSum(arr: [Int]) -> Void {
    let sumArray: Int = arr.reduce(0, +)
    var arraySumNumb: [Int] = []
    
    arr.forEach { number in
        arraySumNumb += [sumArray - number]
    }
    
    let minimumNumber: Int! = arraySumNumb.min()
    let maximumNumber: Int! = arraySumNumb.max()
    
    print("\(minimumNumber!) \(maximumNumber!)")
}
