//
//  ContentView.swift
//  Challenge-iOS
//
//  Created by Szabolcs Nagy on 07/09/2025.
//

import SwiftUI
import SwiftData
import InfoLib

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [UniqueDeviceID]

    var body: some View {
        let deviceID = DeviceInfo.getDeviceID()?.toBase64() ?? ""
        NavigationStack {
            Text("Your encoded device ID is:\n" + deviceID)
                .font(.system(size: 12, weight: .light, design: .serif))
                .italic()
            }.task {
                await saveDeviceId(id: deviceID)
            }
    }
    
    func saveDeviceId(id: String) async {
        let newItem = UniqueDeviceID(deviceID: id)
        modelContext.insert(newItem)
    }
}

#Preview {
    ContentView()
        .modelContainer(for: UniqueDeviceID.self, inMemory: true)
}
