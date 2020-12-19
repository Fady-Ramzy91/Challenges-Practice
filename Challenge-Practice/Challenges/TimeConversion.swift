//
//  TimeConversion.swift
//  Challenge-Practice
//
//  Created by Fady Ramzy on 12/15/20.

// This problem powered by: HackerRank
// Problem link: https://www.hackerrank.com/challenges/time-conversion/problem?h_r=internal-search

import Foundation

func timeConversion(s: String) -> String {
    
    let timeArray = ["Hours", "Minutes", "Seconds"]
    let splitedStrings = s.split(separator: ":")
    var timeMatchedDictionary: [String: String] = [:]
    
    for (index, element) in timeArray.enumerated() {
        timeMatchedDictionary[element] = String(splitedStrings[index])
    }
    
    if s.contains("AM") {
        let secondsValue: String! = timeMatchedDictionary["Seconds"]
        timeMatchedDictionary["Seconds"] = secondsValue.replacingOccurrences(of: "AM", with: "")
        let hoursValue: String! = timeMatchedDictionary["Hours"]
        if hoursValue == "12" {
            timeMatchedDictionary["Hours"] = "00"
        }
        
    } else if s.contains("PM") {
        let secondsValue: String! = timeMatchedDictionary["Seconds"]
        timeMatchedDictionary["Seconds"] = secondsValue.replacingOccurrences(of: "PM", with: "")
        
        let hoursValue: String! = timeMatchedDictionary["Hours"]
        let firstIndex = hoursValue[hoursValue.startIndex]
        if firstIndex == "0"{
            let firstIndexRemoved = hoursValue.replacingOccurrences(of: "0", with: "")
            let hoursInteger = (Int(firstIndexRemoved) ?? 0) + 12
            timeMatchedDictionary["Hours"] = String(hoursInteger)
        } else if hoursValue == "12" {
            let hoursInteger = Int(hoursValue) ?? 0
            timeMatchedDictionary["Hours"] = String(hoursInteger)
        } else {
            let hoursInteger = (Int(hoursValue) ?? 0) + 12
            timeMatchedDictionary["Hours"] = String(hoursInteger)
        }
    }
    
    let filteredArray: [String] = [timeMatchedDictionary["Hours"]!, timeMatchedDictionary["Minutes"]!, timeMatchedDictionary["Seconds"]!]

    return filteredArray.joined(separator: ":")
}
