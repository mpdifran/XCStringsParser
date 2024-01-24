//
//  XCStringsFile.swift
//
//
//  Created by Mark DiFranco on 2024-01-24.
//

import Foundation

public struct XCStringsFile: Codable {
    public var sourceLanguage: String
    public var strings: [String : LocalizedValueGroup]
    public var version: String

    public init(
        sourceLanguage: String,
        strings: [String : LocalizedValueGroup],
        version: String
    ) {
        self.sourceLanguage = sourceLanguage
        self.strings = strings
        self.version = version
    }
}

public extension XCStringsFile {

    var keys: [String] {
        strings.keys.sorted(by: <)
    }

    var locales: [String] {
        Array(strings.values.flatMap({ $0.allLocales }).asSet()).sorted(by: <)
    }
}