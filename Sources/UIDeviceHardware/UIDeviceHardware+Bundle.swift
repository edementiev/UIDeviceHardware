//
//  UIDeviceHardware+Bundle.swift
//  gorbilet
//
//  Created by Евгений Дементьев on 18.10.2025.
//
import Foundation

extension UIDeviceHardware {
    public static var displayName: String {
        guard let info = self.info() else { return "" }
        guard let value = info["CFBundleDisplayName"] as? String else {
            print("BundleHelper: Could find Display Name from Info.plist")
            return ""
        }
        return value
    }
    
    public static var appVersion: String? {
        guard let info = self.info() else { return nil }
        guard let value = info["CFBundleShortVersionString"] as? String else {
            print("BundleHelper: Could find App Version from Info.plist")
            return nil
        }
        return value
    }
    
    public static var appBuildNumber: String? {
        guard let info = self.info() else { return nil }
        guard let value = info["CFBundleVersion"] as? String else {
            print("BundleHelper: Could find App Build Number from Info.plist")
            return nil
        }
        return value
    }
    
    //
    // MARK: Private
    //
    private static func info() -> [String: Any]? {
        guard let info = Bundle.main.infoDictionary else {
            print("BundleHelper: Could not get an access to data from Info.plist")
            return nil
        }
        return info
    }

}
