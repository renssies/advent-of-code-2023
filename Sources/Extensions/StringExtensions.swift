//
//  StringExtensions.swift
//
//
//  Created by Rens Verhoeven on 02/12/2023.
//

import Foundation

extension String {
    
    func findSingleNumberRanges(allowWordRepresentation: Bool = false) -> [Range<String.SubSequence.Index>] {
        var ranges = [Range<String.SubSequence.Index>]()
        var substring = self[self.startIndex..<self.endIndex]
        while let index = substring.firstIndex(where: { $0.isNumber }) {
            ranges.append(index..<substring.index(after: index))
            substring = substring[substring.index(after: index)..<substring.endIndex]
        }
        
        if allowWordRepresentation {
            let wordRepresentations = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
            for wordRepresentation in wordRepresentations {
                var substring = self[self.startIndex..<self.endIndex]
                while let range = substring.range(of: wordRepresentation) {
                    ranges.append(range)
                    substring = substring[range.upperBound..<substring.endIndex]
                }
            }
        }
        return ranges.sorted(by: { $0.lowerBound < $1.lowerBound })
    }
    
}
