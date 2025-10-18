//
//  File.swift
//  UIDeviceHardware
//
//  Created by Евгений Дементьев on 18.10.2025.
//

import Foundation

public class BBB {
    //
    // MARK: Private
    //
    static func info() -> [String: Any]? {
        guard let info = Bundle.main.infoDictionary else {
            print("BundleData: Could not get an access to data from Info.plist")
            return nil
        }
        return info
    }

}
