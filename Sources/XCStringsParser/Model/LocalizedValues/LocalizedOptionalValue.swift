//
//  LocalizedOptionalValue.swift
//  
//
//  Created by Mark DiFranco on 2024-01-24.
//

import Foundation

public struct LocalizedOptionalValue: Codable, Equatable {
    public var stringUnit: StringUnit?
    public var variations: VariationGroup?

    public init(
        stringUnit: StringUnit? = nil,
        variations: VariationGroup? = nil
    ) {
        self.stringUnit = stringUnit
        self.variations = variations
    }
}

public extension LocalizedOptionalValue {

    var defaultStringUnit: StringUnit? {
        if let stringUnit {
            return stringUnit
        }
        return variations?.device.other?.stringUnit
    }
}
