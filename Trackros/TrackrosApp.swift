//
//  TrackrosApp.swift
//  Trackros
//
//  Created by Desmond Thomas on 9/12/26.
//

import SwiftUI
import SwiftData

@main
struct TrackrosApp: App {
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: FoodItem.self)
    }
}
