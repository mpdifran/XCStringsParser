//
//  LocalizedValue.swift
//
//
//  Created by Mark DiFranco on 2024-01-24.
//

import Foundation

public struct LocalizedValue: Codable {
    public var stringUnit: StringUnit

    public init(stringUnit: StringUnit) {
        self.stringUnit = stringUnit
    }
}
