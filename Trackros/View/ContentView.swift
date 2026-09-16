//
//  ContentView.swift
//  Trackros
//
//  Created by Desmond Thomas on 9/12/26.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    var body: some View {
        
        
        TabView{
            
            
            
            JournalView()
                .tabItem{
                    Label("Journal", systemImage: "book")
                }
                .padding()
            
            
        }
        
        
    }
}

#Preview {
    ContentView()
}
