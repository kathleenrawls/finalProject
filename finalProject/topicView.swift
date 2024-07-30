//
//  topicView.swift
//  finalProject
//
//  Created by scholar on 7/30/24.
//

import SwiftUI

struct topicView: View {
    
    @State public var activeTopic: String
    @State public var articles = [
        ["title": "Water article title",
         "topic": "water",
         "author": "Sustainable Home",
         "content": "text"],
        ["title": "Plastic article title",
         "topic": "plastic",
         "author": "Sustainable Home",
         "content": "text1"],
        ["title": "Deforestation article title",
         "topic": "deforestation",
         "author": "Sustainable Home",
         "content": "text3"]]
    
    var body: some View {
        
        NavigationStack {
            
            ScrollView {
                
                HStack {
                    
                    NavigationLink(destination: topicView(activeTopic: "deforestation")) {
                        Button("Deforestation") {
                            activeTopic = "deforestation"
                        }
                    }
                    NavigationLink(destination: topicView(activeTopic: "water")) {
                        Button("Water") {
                            activeTopic = "water"
                        }
                    }
                    NavigationLink(destination: topicView(activeTopic: "plastic")) {
                        Button("Plastic") {
                            activeTopic = "plastic"
                        }
                    }
                    
                } // HStack
            
            } // ScrollView
            
        } // NavigationStack
        
        
        Text(activeTopic)
        Button("test") {
            print(articles[2]["topic"]!)
        }
        
        ScrollView {
            
            VStack {
                
                ForEach(articles.filter { a in a["topic"]! == activeTopic}, id: \.self) {article in
                    Text(article["title"]!)
                } // ForEach
                
            } // VStack
            
        } // ScrollView
        
    }
}

#Preview {
    topicView(activeTopic: "deforestation")
}
