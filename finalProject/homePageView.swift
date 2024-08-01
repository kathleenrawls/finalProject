//
//  ContentView.swift
//  HomePage
//
//  Created by Samhita Mattipalli on 7/31/24.
//

import SwiftUI

struct homePageView: View {
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                
                Color(red: 239/255, green: 236/255, blue: 230/255)
                    .ignoresSafeArea()
                
                
                
                VStack {
                    
                    HStack {
                        Text("Deforestation")
                        Text("Plastics")
                        Text("Water")
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                    
                    Text("Welcome, (person's name)")
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                    
                    
                    Text("Topics you might enjoy")
                    
                    
                    HStack {
                        NavigationLink(destination: topicView(activeTopic: "water")){
                            Image("waterPic")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(14)
                                .frame(width:175, height:175)
                        }
                    }
                    NavigationLink(destination: topicView(activeTopic: "plastics")) {
                        Image("plasticsPic")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(14)
                            .frame(width:175, height:175)
                    }
                    
                    NavigationLink(destination: topicView(activeTopic: "deforestation")) {
                        Image("deforestationPic")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(14)
                            .frame(width:175, height:175)
                        
                    }
                }
                //            .padding(.all, -4.0)
                //            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            }
        }
    }
}



#Preview {
    homePageView()
}

//hello there!
