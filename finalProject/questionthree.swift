//
//  questionthree.swift
//  finalProject
//
//  Created by Rui Bo on 8/1/24.
//

import SwiftUI

struct questionthree: View {
    @State private var answer = ""
        
        var body: some View {
//            NavigationStack {
                ZStack {
                    Color(red: 239/255, green: 236/255, blue: 230/255)
                        .ignoresSafeArea()
                    VStack {
                        Text("How often is a truckload of plastic dumped into the ocean?")
                            .font(.custom("Merriweather-Regular", size: 15))
                            .multilineTextAlignment(.center)
                            .padding(.all, 5.0)
                        Button("Every minute") {
                            answer = "correct"
                        }.buttonStyle(
                            .borderedProminent).tint(Color(red: 0.471, green: 0.569, blue: 0.439))
                        .font(.custom("Merriweather-Regular", size: 15))
                        Button("Every 10 minutes") {
                            answer = "not quite"
                        }.buttonStyle(
                            .borderedProminent).tint(Color(red: 0.471, green: 0.569, blue: 0.439))
                            .font(.custom("Merriweather-Regular", size: 15))
                        Button("Every hour") {
                            answer = "incorrect"
                        }
                        .buttonStyle(
                            .borderedProminent).tint(Color(red: 0.471, green: 0.569, blue: 0.439))
                            .font(.custom("Merriweather-Regular", size: 15))
                        Button("Every day") {
                            answer = "incorrect"
                        }
                        .buttonStyle(
                            .borderedProminent).tint(Color(red: 0.471, green: 0.569, blue: 0.439))
                            .font(.custom("Merriweather-Regular", size: 15))
                        Text(answer)
                        NavigationLink(destination: topicView(activeTopic: "plastic" )) {
                            Text("To Topic Page")
                                .font(.custom("Merriweather-Regular", size: 15))
                                .fontWeight(.bold)
                                .foregroundColor(Color(red: 0.513, green: 0.413, blue: 0.326))
                    }
                }
                    
                    
                    
                        
                    
                }
            
//            }

        }
    }


#Preview {
    questionthree()
}
