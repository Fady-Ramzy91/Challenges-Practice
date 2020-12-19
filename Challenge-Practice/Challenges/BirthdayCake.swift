//
//  BirthdayCake.swift
//  Challenge-Practice
//
//  Created by Fady Ramzy on 12/16/20.
//

// This challenge powered by: HackerRank
// Challenge link: https://www.hackerrank.com/challenges/birthday-cake-candles/problem?h_r=internal-search

import Foundation

func birthdayCakeCandles(candles: [Int]) -> Int {
    let maximumNumber = candles.max()
    return candles.filter { $0 == maximumNumber }.count
}

