//
//  CardGameApp.swift
//  CardGame
//
//  Created by SANJEEV CHOUDHARY on 10/08/24.
//

import SwiftUI

@main
struct CardGameApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
