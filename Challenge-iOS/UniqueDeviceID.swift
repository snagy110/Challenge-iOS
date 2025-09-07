//
//  Item.swift
//  Challenge-iOS
//
//  Created by Szabolcs Nagy on 07/09/2025.
//

import Foundation
import SwiftData

@Model
final class UniqueDeviceID {

    var deviceID: String?
    
    init(deviceID: String) {
        self.deviceID = deviceID
    }
}
