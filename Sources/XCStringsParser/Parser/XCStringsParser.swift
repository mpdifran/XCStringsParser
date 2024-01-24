//
//  XCStringsParser.swift
//
//
//  Created by Mark DiFranco on 2024-01-24.
//

import Foundation

public final class XCStringsParser {
    private let encoder = JSONEncoder()
    private let decoder = JSONDecoder()

    public init() { }
}

public extension XCStringsParser {

    func decodeFile(from data: Data) throws -> XCStringsFile {
        try decoder.decode(XCStringsFile.self, from: data)
    }

    func encodeToData(file: XCStringsFile) throws -> Data {
        try encoder.encode(file)
    }
}
