//
//  ContentView.swift
//  finalProject
//
//  Created by scholar on 7/26/24.
// test

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        NavigationStack {
            
            ScrollView (.horizontal) {
                
                HStack (spacing: 20) {
                    
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
//for the merriweather font it is .font(.custom("Merriweather-Regular", size: 15)) but substitute the 15 for any number you want
//for the groovy font it is .font(.custom("groovyfont", size: 15)) but substitute the 15 for any number you want
//testing

