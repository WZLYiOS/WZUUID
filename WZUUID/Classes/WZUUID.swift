//
//  WZUUID.swift
//  WZUUID
//
//  Created by xiaobin liu on 2019/7/2.
//  Copyright © 2019 xiaobin liu. All rights reserved.
//

import UIKit
import Foundation
import KeychainAccess

//MARK - 唯一标示类
public class WZUUID {
    
    /// 唯一标示
    public static var uuid: String {
        
        let bundleID = Bundle.main.infoDictionary?[kCFBundleIdentifierKey as String] as? String ?? "com.shenzhen.wzly.uuid"
        var string = Keychain(service: bundleID)["uniqueIdentifier"]
        if string == nil {
            let  keychain = Keychain(service: bundleID)
            string = NSUUID().uuidString
            keychain["uniqueIdentifier"] = string
        }
        return string!
    }
}

