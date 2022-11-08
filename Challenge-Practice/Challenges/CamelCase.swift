//
//  CamelCase.swift
//  Challenge-Practice
//
//  Created by Fady Ramzy on 12/17/20.

// Challenge powered by: HackerRank
// Challenge link: https://www.hackerrank.com/challenges/camelcase/problem?h_r=internal-search

import Foundation

func camelcase(s: String) -> Int {
    return s.split(whereSeparator: { $0.isUppercase }).count
}
