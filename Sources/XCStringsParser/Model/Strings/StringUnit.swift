//
//  StringUnit.swift
//
//
//  Created by Mark DiFranco on 2024-01-24.
//

import Foundation

public struct StringUnit: Codable, Equatable {
    public var state: State
    public var value: String

    public init(state: StringUnit.State, value: String) {
        self.state = state
        self.value = value
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.state = (try? container.decode(StringUnit.State.self, forKey: .state)) ?? .unknown
        self.value = try container.decode(String.self, forKey: .value)
    }
}

public extension StringUnit {
    enum State: String, Codable, Equatable {
        case translated
        case needsReview = "needs_review"
        case unknown
    }
}
