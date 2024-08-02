//
//  ContentView.swift
//  HomePage
//
//  Created by Samhita Mattipalli on 7/31/24.
//

import SwiftUI

struct homePageView: View {
    
    @Binding public var username: String
    
    var body: some View {
        
//        NavigationStack {
            
            ZStack {
                
                Color(red: 239/255, green: 236/255, blue: 230/255)
                    .ignoresSafeArea()
                
                
                
                VStack {
                    
                    HStack(spacing:30) {
                        
                        NavigationLink(destination: homePageView(username: $username)) {
                            Text("⏏")
                                .foregroundColor(Color.black)
                        }
                        
                        Text("Sustainable Home")
                            .font(.custom("groovyfont", size: 10))
                        
                        HStack {
                            
                            NavigationLink(destination: quizView()) {
                                Text("⌕")
                                    .foregroundColor(.black)
                            }
                            
                            NavigationLink(destination: addArticleView()) {
                                Text("+")
                                    .foregroundColor(Color.black)
                            }
                            
                        }
                        
                    } // HStack
                    .frame(width: 350, height: 40)
                    .background(Rectangle()
                        .foregroundColor(Color(red: 120/255, green: 145/255, blue: 112/255)))
                    .cornerRadius(13)
                    
                    ScrollView (.horizontal) {
                        
                        HStack (spacing: 20) {
                            
                            NavigationLink(destination: topicView(activeTopic: "deforestation")) {
                                Text("Deforestation")
                            }
                                .foregroundColor(Color(red:110/255, green:101/255, blue:93/255))
                                

                            NavigationLink(destination: topicView(activeTopic: "water")) {
                                Text("Water")
                            }
                                .foregroundColor(Color(red:110/255, green:101/255, blue:93/255))
                            
                    NavigationLink(destination: topicView(activeTopic: "plastic")) {
                        Text("Plastic")
                    }
                                .foregroundColor(Color(red:110/255, green:101/255, blue:93/255))
                            
                            
                        } // HStack
                        .font(.custom("merriweather", size: 15))
                        
                    } // ScrollView
                    .frame(width: 350, height: 30)
                    
                   
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                    
                    Text("Welcome \(username)")
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                        .font(.custom("merriweather", size: 15))
                    
                    
                    Text("Topics you might enjoy")
                        .font(.custom("groovyfont", size: 10))
                    
                    
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
//        }
//        .frame(maxHeight: .infinity)
        
    }
}



#Preview {
    homePageView(username: .constant(""))
}

//hello there!
