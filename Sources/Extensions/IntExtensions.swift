//
//  IntExtensions.swift
//
//
//  Created by Rens Verhoeven on 02/12/2023.
//

import Foundation

extension Int {
    
    init?(word: Substring) {
        guard let int = Int(word: String(word)) else {
            return nil
        }
        self = int
    }
    
    init?(word: String) {
        switch word {
        case "zero":
            self = 0
        case "one":
            self = 1
        case "two":
            self = 2
        case "three":
            self = 3
        case "four":
            self = 4
        case "five":
            self = 5
        case "six":
            self = 6
        case "seven":
            self = 7
        case "eight":
            self = 8
        case "nine":
            self = 9
        default:
            guard let int = Int(word) else {
                return nil
            }
            self = int
        }
    }
    
}
