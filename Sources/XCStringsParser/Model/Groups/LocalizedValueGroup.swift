//
//  LocalizedValue.swift
//
//
//  Created by Mark DiFranco on 2024-01-24.
//

import Foundation
import AppFoundations

public struct LocalizedValueGroup: Codable, Equatable {
    public var extractionState: ExtractionState
    public var localizations: [String : LocalizedOptionalValue]

    public init(
        extractionState: LocalizedValueGroup.ExtractionState,
        localizations: [String : LocalizedOptionalValue]
    ) {
        self.extractionState = extractionState
        self.localizations = localizations
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.extractionState = (try? container.decodeIfPresent(LocalizedValueGroup.ExtractionState.self, forKey: .extractionState)) ?? .unknown
        self.localizations = (try? container.decode([String : LocalizedOptionalValue].self, forKey: .localizations)) ?? [:]
    }
}

public extension LocalizedValueGroup {
    enum ExtractionState: String, Codable, Equatable {
        case manual
        case unknown
    }
}

extension LocalizedValueGroup {

    var allLocales: Set<String> {
        localizations.keys.asSet()
    }
}
