//
//  File.swift
//  
//
//  Created by Mark DiFranco on 2024-01-24.
//

import Foundation

public struct DeviceVariation: Codable {
    public var iphone: LocalizedValue?
    public var ipad: LocalizedValue?
    public var mac: LocalizedValue?
    public var ipod: LocalizedValue?
    public var applewatch: LocalizedValue?
    public var appletv: LocalizedValue?
    public var applevision: LocalizedValue?
    public var other: LocalizedValue?

    public init(
        iphone: LocalizedValue? = nil,
        ipad: LocalizedValue? = nil,
        mac: LocalizedValue? = nil,
        ipod: LocalizedValue? = nil,
        applewatch: LocalizedValue? = nil,
        appletv: LocalizedValue? = nil,
        applevision: LocalizedValue? = nil,
        other: LocalizedValue? = nil
    ) {
        self.iphone = iphone
        self.ipad = ipad
        self.mac = mac
        self.ipod = ipod
        self.applewatch = applewatch
        self.appletv = appletv
        self.applevision = applevision
        self.other = other
    }
}
