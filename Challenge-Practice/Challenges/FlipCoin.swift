//
//  FlipCoin.swift
//  Challenge-Practice
//
//  Created by Fady Ramzy on 12/15/20.
//

import Foundation

func flipCoin(with numberOfFlips: Int) {
    // This to make the probability 50% for (heads) & 50% for (traits)
    let divisionNumber = Double(numberOfFlips/2)
    
    // This refers to the number of flipping
    for _ in 0..<numberOfFlips {
        // This is a random number generated from 0 to the number
        
        let randomNumber = Double.random(in: 0...Double(numberOfFlips))
        
        if randomNumber < divisionNumber {
            print("Heads")
            print(randomNumber)
        } else {
            print("Traits")
            print(randomNumber)
        }
    }
}
