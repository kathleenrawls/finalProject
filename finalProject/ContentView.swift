//
//  ContentView.swift
//  finalProject
//
//  Created by scholar on 7/26/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        NavigationStack {
            
            ScrollView {
                
                HStack {
                    
                    NavigationLink(destination: topicView(activeTopic: "deforestation")) {
                        Text("Deforestation")
                    }
                    NavigationLink(destination: topicView(activeTopic: "water")) {
                        Text("Water")
                    }
                    NavigationLink(destination: topicView(activeTopic: "plastic")) {
                        Text("Plastic")
                    }
                    
                } // HStack
            
            } // ScrollView
            
        } // NavigationStack
        
    } // Body
}

#Preview {
    ContentView()
}
