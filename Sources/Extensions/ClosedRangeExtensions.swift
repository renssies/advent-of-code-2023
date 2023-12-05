//
//  ClosedRangeExtensions.swift
//  
//
//  Created by Rens Verhoeven on 05/12/2023.
//

import Foundation

extension ClosedRange where Bound == Int {
    
    public subscript(index: Int) -> Int {
        return self.lowerBound + index
    }
    
}
