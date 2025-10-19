//
//  UIDeviceHardware.swift
//  gorbilet
//
//  Created by Евгений Дементьев on 18.10.2025.
//  Copyright © 2019 Gorbilet. All rights reserved.
//
import UIKit

public struct DynamocIslandVSize: Sendable {
    let posY: CGFloat
    let width: CGFloat
    let height: CGFloat
}

public enum DeviceModelType: Sendable {
    case unknown
    case simulator
    case iPhone, iPhone3G, iPhone3Gs
    case iPhone4, iPhone4s
    case iPhone5, iPhone5c, iPhone5s
    case iPhone6, iPhone6Plus, iPhone6s, iPhone6sPlus
    case iPhone7, iPhone7Plus
    case iPhone8, iPhone8Plus
    case iPhoneX, iPhoneXs, iPhoneXsMax, iPhoneXr
    case iPhone11, iPhone11Pro, iPhone11ProMax
    case iPhone12, iPhone12Pro, iPhone12ProMax, iPhone12Mini
    case iPhone13, iPhone13Pro, iPhone13ProMax, iPhone13Mini
    case iPhone14, iPhone14Plus, iPhone14Pro, iPhone14ProMax
    case iPhone15, iPhone15Plus, iPhone15Pro, iPhone15ProMax
    case iPhone16, iPhone16e, iPhone16Plus, iPhone16Pro, iPhone16ProMax
    case iPhone17, iPhone17Air, iPhone17Pro, iPhone17ProMax
    case iPhoneSE, iPhoneSE2, iPhoneSE3
    
    case iPodTouch1, iPodTouch2, iPodTouch3, iPodTouch4, iPodTouch5, iPodTouch6, iPodTouch7
    
    case iPad, iPad3G, iPad2, iPad3, iPad4, iPad5, iPad6, iPad7, iPad8, iPad9, iPad10, iPad11
    case iPadMini, iPadMiniRetina, iPadMini3, iPadMini4, iPadMini5, iPadMini6, iPadMini7
    case iPadAir, iPadAir2, iPadAir3, iPadAir4, iPadAir5, iPadAir6_11, iPadAir6_13, iPadAir7_11, iPadAir7_13
    case iPadPro_9_7, iPadPro_12_9, iPadPro2_10_5, iPadPro2_12_9, iPadPro3_11, iPadPro3_12_9, iPadPro4_11, iPadPro4_12_9, iPadPro5_11, iPadPro5_12_9
    case iPadPro6_11, iPadPro6_12_9, iPadPro7_11, iPadPro7_12_9
    
    
    var name: String {
        switch self {
            case .unknown:      return "Unknown"
            case .simulator:    return "Simulator"
                
            case .iPhone:       return "iPhone"
            case .iPhone3G:     return "iPhone 3G"
            case .iPhone3Gs:    return "iPhone 3Gs"
                
            case .iPhone4:      return "iPhone 4"
            case .iPhone4s:     return "iPhone 4s"
                
            case .iPhone5:      return "iPhone 5"
            case .iPhone5c:     return "iPhone 5c"
            case .iPhone5s:     return "iPhone 5s"
                
            case .iPhone6:      return "iPhone 6"
            case .iPhone6Plus:  return "iPhone 6 Plus"
            case .iPhone6s:     return "iPhone 6s"
            case .iPhone6sPlus: return "iPhone 6s Plus"
                
            case .iPhone7:      return "iPhone 7"
            case .iPhone7Plus:  return "iPhone 7 Plus"
                
            case .iPhone8:      return "iPhone 8"
            case .iPhone8Plus:  return "iPhone 8 Plus"
                
            case .iPhoneX:      return "iPhone X"
            case .iPhoneXs:     return "iPhone Xs"
            case .iPhoneXsMax:  return "iPhone Xs Max"
            case .iPhoneXr:     return "iPhone Xr"

            case .iPhone11:         return "iPhone 11"
            case .iPhone11Pro:      return "iPhone 11 Pro"
            case .iPhone11ProMax:   return "iPhone 11 Pro Max"
                
            case .iPhone12:         return "iPhone 12"
            case .iPhone12Pro:      return "iPhone 12 Pro"
            case .iPhone12ProMax:   return "iPhone 12 Pro Max"
            case .iPhone12Mini:     return "iPhone 12 mini"

            case .iPhone13:         return "iPhone 13"
            case .iPhone13Pro:      return "iPhone 13 Pro"
            case .iPhone13ProMax:   return "iPhone 13 Pro Max"
            case .iPhone13Mini:     return "iPhone 13 mini"

            case .iPhone14:         return "iPhone 14"
            case .iPhone14Plus:     return "iPhone 14 Plus"
            case .iPhone14Pro:      return "iPhone 14 Pro"
            case .iPhone14ProMax:   return "iPhone 14 Pro Max"

            case .iPhone15:         return "iPhone 15"
            case .iPhone15Plus:     return "iPhone 15 Plus"
            case .iPhone15Pro:      return "iPhone 15 Pro"
            case .iPhone15ProMax:   return "iPhone 15 Pro Max"

            case .iPhone16:         return "iPhone 16"
            case .iPhone16e:        return "iPhone 16e"
            case .iPhone16Plus:     return "iPhone 16 Plus"
            case .iPhone16Pro:      return "iPhone 16 Pro"
            case .iPhone16ProMax:   return "iPhone 16 Pro Max"

            case .iPhone17:         return "iPhone 17"
            case .iPhone17Air:      return "iPhone 17 Air"
            case .iPhone17Pro:      return "iPhone 17 Pro"
            case .iPhone17ProMax:   return "iPhone 17 Pro Max"

            case .iPhoneSE:     return "iPhone SE"
            case .iPhoneSE2:    return "iPhone SE (2nd generation)"
            case .iPhoneSE3:    return "iPhone SE (3rd generation)"
                
            case .iPodTouch1:   return "iPod Touch (1st generation)"
            case .iPodTouch2:   return "iPod Touch (2nd generation)"
            case .iPodTouch3:   return "iPod Touch (3rd generation)"
            case .iPodTouch4:   return "iPod Touch (4st generation)"
            case .iPodTouch5:   return "iPod Touch (5st generation)"
            case .iPodTouch6:   return "iPod Touch (6st generation)"
            case .iPodTouch7:   return "iPod Touch (7st generation)"
                
            case .iPad:     return "iPad"
            case .iPad3G:   return "iPad 3G"
            case .iPad2:    return "iPad (2nd generation)"
            case .iPad3:    return "iPad (3rd generation)"
            case .iPad4:    return "iPad (4st generation)"
            case .iPad5:    return "iPad (5th generation)"
            case .iPad6:    return "iPad (6th generation)"
            case .iPad7:    return "iPad (7th generation)"
            case .iPad8:    return "iPad (8th generation)"
            case .iPad9:    return "iPad (9th generation)"
            case .iPad10:   return "iPad (10th generation)"
            case .iPad11:   return "iPad (11th generation)"

            case .iPadMini:         return "iPad mini"
            case .iPadMiniRetina:   return "iPad mini Retina"
            case .iPadMini3:        return "iPad mini (3rd generation)"
            case .iPadMini4:        return "iPad mini (4st generation)"
            case .iPadMini5:        return "iPad mini (5st generation)"
            case .iPadMini6:        return "iPad mini (6st generation)"
            case .iPadMini7:        return "iPad mini (7st generation)"

            case .iPadAir:      return "iPad Air"
            case .iPadAir2:     return "iPad Air (2nd generation)"
            case .iPadAir3:     return "iPad Air (3rd generation)"
            case .iPadAir4:     return "iPad Air (4th generation)"
            case .iPadAir5:     return "iPad Air (5th generation)"
            case .iPadAir6_11:  return "iPad Air 11-inch (6th generation)"
            case .iPadAir6_13:  return "iPad Air 13-inch (6th generation)"
            case .iPadAir7_11:  return "iPad Air 11-inch (7th generation)"
            case .iPadAir7_13:  return "iPad Air 13-inch (7th generation)"

            case .iPadPro_9_7:      return "iPad Pro 9.7-inch"
            case .iPadPro_12_9:     return "iPad Pro 12.9-inch"
            case .iPadPro2_10_5:    return "iPad Pro 10.5-inch (2nd generation)"
            case .iPadPro2_12_9:    return "iPad Pro 12.9-inch (2nd generation)"
            case .iPadPro3_11:      return "iPad Pro 11-inch (3rd generation)"
            case .iPadPro3_12_9:    return "iPad Pro 12.9-inch (3rd generation)"
            case .iPadPro4_11:      return "iPad Pro 11-inch (4st generation)"
            case .iPadPro4_12_9:    return "iPad Pro 12.9-inch (4st generation)"
            case .iPadPro5_11:      return "iPad Pro 11-inch (5st generation)"
            case .iPadPro5_12_9:    return "iPad Pro 12.9-inch (5st generation)"
            case .iPadPro6_11:      return "iPad Pro 11-inch (6st generation)"
            case .iPadPro6_12_9:    return "iPad Pro 12.9-inch (6st generation)"
            case .iPadPro7_11:      return "iPad Pro 11-inch (7st generation)"
            case .iPadPro7_12_9:    return "iPad Pro 12.9-inch (7st generation)"
        }
    }
    
    var diVSize: DynamocIslandVSize? {
        switch self {
            case .iPhoneX, .iPhoneXs, .iPhoneXsMax, .iPhone11Pro, .iPhone11ProMax:
                return DynamocIslandVSize(posY: 0, width: 10, height: 30.0)
                
            case .iPhone12Pro, .iPhone12ProMax, .iPhone12:
                return DynamocIslandVSize(posY: 0, width: 210.0, height: 32.0)

            case .iPhoneXr, .iPhone11:
                return DynamocIslandVSize(posY: 0, width: 10, height: 33.0)
            default:
                return nil
        }
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

    /*
    
    public static let model: DeviceModelType = {
        return UIDeviceHardware.mapToDevice(identifier: UIDeviceHardware.modelId)
    }()

    public static let modelName: String = {
        return UIDeviceHardware.mapToDevice(identifier: UIDeviceHardware.modelId).name
    }()

    public static let modelDIVSize: DynamocIslandVSize? = {
        return UIDeviceHardware.mapToDevice(identifier: UIDeviceHardware.modelId).diVSize
    }()

    //
    // MARK: Private
    //
    private static func mapToDevice(identifier: String) -> DeviceModelType {
        switch identifier {
                
            //
            // Simulator
            //
            case "i386", "x86_64", "arm64": return .simulator
                
                
            //
            // iPhone
            //
            case "iPhone1,1":                           return .iPhone
                
            case "iPhone1,2":                           return .iPhone3G
            case "iPhone2,1":                           return .iPhone3Gs
                
            case "iPhone3,1", "iPhone3,2", "iPhone3,3": return .iPhone4
            case "iPhone4,1":                           return .iPhone4s
                
            case "iPhone5,1", "iPhone5,2":              return .iPhone5
            case "iPhone5,3", "iPhone5,4":              return .iPhone5c
            case "iPhone6,1", "iPhone6,2":              return .iPhone5s
                
            case "iPhone7,1":                           return .iPhone6Plus
            case "iPhone7,2":                           return .iPhone6
            case "iPhone8,1":                           return .iPhone6s
            case "iPhone8,2":                           return .iPhone6sPlus
            case "iPhone8,4":                           return .iPhoneSE
                
            case "iPhone9,1", "iPhone9,3":              return .iPhone7
            case "iPhone9,2", "iPhone9,4":              return .iPhone7Plus
                
            case "iPhone10,1", "iPhone10,4":            return .iPhone8
            case "iPhone10,2", "iPhone10,5":            return .iPhone8Plus
                
            case "iPhone10,3", "iPhone10,6":            return .iPhoneX
            case "iPhone11,2":                          return .iPhoneXs
            case "iPhone11,4", "iPhone11,6":            return .iPhoneXsMax
            case "iPhone11,8":                          return .iPhoneXr
                
            case "iPhone12,1":                          return .iPhone11
            case "iPhone12,3":                          return .iPhone11Pro
            case "iPhone12,5":                          return .iPhone11ProMax
            case "iPhone12,8":                          return .iPhoneSE2
                
            case "iPhone13,1":                          return .iPhone12Mini
            case "iPhone13,2":                          return .iPhone12
            case "iPhone13,3":                          return .iPhone12Pro
            case "iPhone13,4":                          return .iPhone12ProMax
                
            case "iPhone14,2":                          return .iPhone13Pro
            case "iPhone14,3":                          return .iPhone13ProMax
            case "iPhone14,4":                          return .iPhone13Mini
            case "iPhone14,5":                          return .iPhone13
            case "iPhone14,6":                          return .iPhoneSE3
                
            case "iPhone14,7":                          return .iPhone14
            case "iPhone14,8":                          return .iPhone14Plus
            case "iPhone15,2":                          return .iPhone14Pro
            case "iPhone15,3":                          return .iPhone14ProMax
                
            case "iPhone15,4":                          return .iPhone15
            case "iPhone15,5":                          return .iPhone15Plus
            case "iPhone16,1":                          return .iPhone15Pro
            case "iPhone16,2":                          return .iPhone15ProMax
                
            case "iPhone17,1":                          return .iPhone16Pro
            case "iPhone17,2":                          return .iPhone16ProMax
            case "iPhone17,3":                          return .iPhone16
            case "iPhone17,4":                          return .iPhone16Plus
            case "iPhone17,5":                          return .iPhone16e
                
            case "iPhone18,1":                          return .iPhone17Pro
            case "iPhone18,2":                          return .iPhone17ProMax
            case "iPhone18,3":                          return .iPhone17
            case "iPhone18,4":                          return .iPhone17Air
                
                
            //
            // iPod
            //
            case "iPod1,1": return .iPodTouch1
            case "iPod2,1": return .iPodTouch2
            case "iPod3,1": return .iPodTouch3
            case "iPod4,1": return .iPodTouch4
            case "iPod5,1": return .iPodTouch5
            case "iPod7,1": return .iPodTouch6
            case "iPod9,1": return .iPodTouch7
                
                
            //
            // iPad
            //
            case "iPad1,1":                                         return .iPad
            case "iPad1,2":                                         return .iPad3G
            case "iPad2,1", "iPad2,2", "iPad2,3", "iPad2,4":        return .iPad2
            case "iPad2,5", "iPad2,6", "iPad2,7":                   return .iPadMini
            case "iPad3,1", "iPad3,2", "iPad3,3":                   return .iPad3
            case "iPad3,4", "iPad3,5", "iPad3,6":                   return .iPad4
            case "iPad4,1", "iPad4,2", "iPad4,3":                   return .iPadAir
            case "iPad4,4", "iPad4,5", "iPad4,6":                   return .iPadMiniRetina
            case "iPad4,7", "iPad4,8", "iPad4,9":                   return .iPadMini3
            case "iPad5,1", "iPad5,2":                              return .iPadMini4
            case "iPad5,3", "iPad5,4":                              return .iPadAir2
            case "iPad6,3", "iPad6,4":                              return .iPadPro_9_7
            case "iPad6,7", "iPad6,8":                              return .iPadPro_12_9
            case "iPad6,11", "iPad6,12":                            return .iPad5
            case "iPad7,1", "iPad7,2":                              return .iPadPro2_12_9
            case "iPad7,3", "iPad7,4":                              return .iPadPro2_10_5
            case "iPad7,5", "iPad7,6":                              return .iPad6
            case "iPad7,11", "iPad7,12":                            return .iPad7
            case "iPad8,1", "iPad8,2", "iPad8,3", "iPad8,4":        return .iPadPro3_11
            case "iPad8,5", "iPad8,6", "iPad8,7", "iPad8,8":        return .iPadPro3_12_9
            case "iPad8,9", "iPad8,10":                             return .iPadPro4_11
            case "iPad8,11", "iPad8,12":                            return .iPadPro4_12_9
            case "iPad11,1", "iPad11,2":                            return .iPadMini5
            case "iPad11,3", "iPad11,4":                            return .iPadAir3
            case "iPad11,6", "iPad11,7":                            return .iPad8
            case "iPad12,1", "iPad12,2":                            return .iPad9
            case "iPad13,1", "iPad13,2":                            return .iPadAir4
            case "iPad13,4", "iPad13,5", "iPad13,6", "iPad13,7":    return .iPadPro5_11
            case "iPad13,8", "iPad13,9", "iPad13,10", "iPad13,11":  return .iPadPro5_12_9
            case "iPad13,16", "iPad13,17":                          return .iPadAir5
            case "iPad13,18", "iPad13,19":                          return .iPad10
            case "iPad14,1", "iPad14,2":                            return .iPadMini6
            case "iPad14,3", "iPad14,4":                            return .iPadPro6_11
            case "iPad14,5", "iPad14,6":                            return .iPadPro6_12_9
            case "iPad14,8", "iPad14,9":                            return .iPadAir6_11
            case "iPad14,10", "iPad14,11":                          return .iPadAir6_13
            case "iPad15,3", "iPad15,4":                            return .iPadAir7_11
            case "iPad15,5", "iPad15,6":                            return .iPadAir7_13
            case "iPad15,7", "iPad15,8":                            return .iPad11
            case "iPad16,1", "iPad16,2":                            return .iPadMini7
            case "iPad16,3", "iPad16,4":                            return .iPadPro7_11
            case "iPad16,5", "iPad16,6":                            return .iPadPro7_12_9

                
            //
            // iPad
            //

                
                
                
                
                
                
                
                
                
                
                
                
            default:                                              return .unknown
        }
    }
     */
}
