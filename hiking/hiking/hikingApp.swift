//
//  hikingApp.swift
//  hiking
//
//  Created by Rafael Nunes on 27/11/24.
//

import SwiftUI

@main
struct hikingApp: App {
    
    @State private var appState = AppState()
    
    var body: some Scene {
        WindowGroup {
            ListView()
                .environment(appState)
        }
    }
}
