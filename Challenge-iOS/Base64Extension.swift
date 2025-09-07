//
//  Base64Extension.swift
//  Challenge-iOS
//
//  Created by Szabolcs Nagy on 07/09/2025.
//

import Foundation

extension String {

    func fromBase64() -> String? {
        guard let data = Data(base64Encoded: self) else {
            return nil
        }

        return String(data: data, encoding: .utf8)
    }

    func toBase64() -> String {
        return Data(self.utf8).base64EncodedString()
    }

}
