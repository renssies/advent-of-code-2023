//
//  ArrayExtensions.swift
//  
//
//  Created by Rens Verhoeven on 03/12/2023.
//

import Foundation

extension Array {
    
    subscript(safe index: Int) -> Element? {
        return index < count && index >= 0 ? self[index] : nil
    }
    
}
