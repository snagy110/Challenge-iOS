//
//  Challenge_iOSApp.swift
//  Challenge-iOS
//
//  Created by Szabolcs Nagy on 07/09/2025.
//

import SwiftUI
import SwiftData

@main
struct Challenge_iOSApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            UniqueDeviceID.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
