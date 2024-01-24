//
//  VariationGroup.swift
//
//
//  Created by Mark DiFranco on 2024-01-24.
//

import Foundation

public struct VariationGroup: Codable, Equatable {
    public var device: DeviceVariation

    public init(device: DeviceVariation) {
        self.device = device
    }
}
