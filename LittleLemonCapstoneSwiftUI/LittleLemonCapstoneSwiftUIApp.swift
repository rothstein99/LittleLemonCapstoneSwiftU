//
//  LittleLemonCapstoneSwiftUIApp.swift
//  LittleLemonCapstoneSwiftUI
//
//  Created by Brad Rothstein on 8/30/26.
//

import SwiftUI
import CoreData

@main
struct LittleLemonCapstoneSwiftUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
