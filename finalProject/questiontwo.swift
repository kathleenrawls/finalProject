//
//  questiontwo.swift
//  finalProject
//
//  Created by Rui Bo on 8/1/24.
//

import SwiftUI

struct questiontwo: View {
    @State private var answer = ""
        
        var body: some View {
            NavigationStack {
                ZStack {
                    Color(red: 239/255, green: 236/255, blue: 230/255)
                        .ignoresSafeArea()
                    VStack {
                        Text("How many plastic bags are used per minute globally?")
                            .font(.custom("Merriweather-Regular", size: 15))
                            .multilineTextAlignment(.center)
                            .padding(.all, 5.0)
                        Button("70,000") {
                            answer = "incorrect"
                        }.buttonStyle(
                            .borderedProminent).tint(Color(red: 0.471, green: 0.569, blue: 0.439))
                        .font(.custom("Merriweather-Regular", size: 15))
                        Button("2,000,000") {
                            answer = "correct"
                        }.buttonStyle(
                            .borderedProminent).tint(Color(red: 0.471, green: 0.569, blue: 0.439))
                            .font(.custom("Merriweather-Regular", size: 15))
                        Button("400,000") {
                            answer = "incorrect"
                        }
                        .buttonStyle(
                            .borderedProminent).tint(Color(red: 0.471, green: 0.569, blue: 0.439))
                            .font(.custom("Merriweather-Regular", size: 15))
                        Button("10,000,000") {
                            answer = "incorrect"
                        }
                        .buttonStyle(
                            .borderedProminent).tint(Color(red: 0.471, green: 0.569, blue: 0.439))
                            .font(.custom("Merriweather-Regular", size: 15))
                        Text(answer)
                        NavigationLink(destination: questionthree()) {
                            Text("next question")
                                .font(.custom("Merriweather-Regular", size: 15))
                                .fontWeight(.bold)
                                .foregroundColor(Color(red: 0.513, green: 0.413, blue: 0.326))
                            
                    }
                }
                    
                    
                    
                    
                }
            
            }

        }
    }

#Preview {
    questiontwo()
}
