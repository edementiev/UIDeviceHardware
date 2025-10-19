//
//  UIDeviceHardware.swift
//  gorbilet
//
//  Created by Евгений Дементьев on 18.10.2025.
//  Copyright © 2019 Gorbilet. All rights reserved.
//
import UIKit
import DeviceKit

public struct DynamicIslandSize: Sendable {
    public let topY: CGFloat
    public let width: CGFloat
    public let height: CGFloat
    public let topCenter: CGFloat
    
    init(topY: CGFloat, width: CGFloat, height: CGFloat) {
        self.topY = topY
        self.width = width
        self.height = height
        self.topCenter = topY + (height / 2.0)
    }
}

public class UIDeviceHardware {
    public static let identifier: String = {
        var systemInfo = utsname()
        
        uname(&systemInfo)
        
        let machineMirror = Mirror(reflecting: systemInfo.machine)
        let identifier = machineMirror.children.reduce("") { identifier, element in
            guard let value = element.value as? Int8, value != 0 else { return identifier }
            return identifier + String(UnicodeScalar(UInt8(value)))
        }
        
        return identifier
    }()
    
    public static let diSize: DynamicIslandSize? = {
        let device = Device.current
        switch device {
            case .iPhoneX, .simulator(.iPhoneX), .iPhoneXS, .simulator(.iPhoneXS), .iPhone11Pro, .simulator(.iPhone11Pro):
                return DynamicIslandSize(topY: 0.0, width: 208.5, height: 30.0)

            case .iPhoneXSMax, .simulator(.iPhoneXSMax), .iPhone11ProMax, .simulator(.iPhone11ProMax):
                return DynamicIslandSize(topY: 0.0, width: 209.5, height: 30.0)

            case .iPhone12ProMax, .simulator(.iPhone12ProMax):
                return DynamicIslandSize(topY: 0.0, width: 209.5, height: 32.0)

            case .iPhone12, .simulator(.iPhone12), .iPhone12Pro, .simulator(.iPhone12Pro):
                return DynamicIslandSize(topY: 0.0, width: 210.0, height: 32.0)

            case .iPhone12Mini, .simulator(.iPhone12Mini):
                return DynamicIslandSize(topY: 0.0, width: 217.5, height: 33.0)

            case .iPhoneXR, .simulator(.iPhoneXR), .iPhone11, .simulator(.iPhone11):
                return DynamicIslandSize(topY: 0.0, width: 231.0, height: 33.0)

            case .iPhone13ProMax, .simulator(.iPhone13ProMax), .iPhone14Plus, .simulator(.iPhone14Plus):
                return DynamicIslandSize(topY: 0.0, width: 161.5, height: 33.5)

            case .iPhone13, .simulator(.iPhone13), .iPhone13Pro, .simulator(.iPhone13Pro),
                    .iPhone14, .simulator(.iPhone14), .iPhone16e, .simulator(.iPhone16e):
                return DynamicIslandSize(topY: 0.0, width: 162.0, height: 33.5)

            case .iPhone13Mini, .simulator(.iPhone13Mini):
                return DynamicIslandSize(topY: 0.0, width: 167.5, height: 36.0)
                
            case .iPhone14Pro, .simulator(.iPhone14Pro), .iPhone15, .simulator(.iPhone15), .iPhone15Pro, .simulator(.iPhone15Pro),
                    .iPhone16, .simulator(.iPhone16):
                return DynamicIslandSize(topY: 11.2, width: 125.0, height: 36.8)

            case .iPhone14ProMax, .simulator(.iPhone14ProMax), .iPhone15Plus, .simulator(.iPhone15Plus),
                    .iPhone15ProMax, .simulator(.iPhone15ProMax), .iPhone16Plus, .simulator(.iPhone16Plus):
                return DynamicIslandSize(topY: 11.2, width: 125.5, height: 36.8)

            case .iPhone16Pro, .simulator(.iPhone16Pro), .iPhone16ProMax, .simulator(.iPhone16ProMax),
                    .iPhone17, .simulator(.iPhone17), .iPhone17Pro, .simulator(.iPhone17Pro), .iPhone17ProMax, .simulator(.iPhone17ProMax):
                return DynamicIslandSize(topY: 14.0, width: 125.5, height: 36.8)

            case .iPhoneAir:
                return DynamicIslandSize(topY: 20.0, width: 125.5, height: 36.8)

            default:
                return nil
        }
    }()
}
