//
//  ScriptyApp.swift
//  Scripty
//
//  Created by Michael Testut on 2/1/23.
//

import SwiftUI

@main
struct ScriptyApp: App {
    @StateObject private var dataController = DataController()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
