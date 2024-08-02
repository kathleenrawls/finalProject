//
//  questionone.swift
//  finalProject
//
//  Created by Rui Bo on 8/1/24.
//

import SwiftUI

struct questionone: View {
    @State private var answer = ""
        
        var body: some View {
//            NavigationStack {
                ZStack {
                    Color(red: 239/255, green: 236/255, blue: 230/255)
                        .ignoresSafeArea()
                    VStack {
                        Text("What percentage of plastic ends up getting recycled?")
                            .font(.custom("Merriweather-Regular", size: 15))
                            .multilineTextAlignment(.center)
                            .padding(.all, 5.0)
                        Button("70 percent") {
                            answer = "incorrect"
                        }.buttonStyle(
                            .borderedProminent).tint(Color(red: 0.471, green: 0.569, blue: 0.439))
                        .font(.custom("Merriweather-Regular", size: 15))
                        Button("30 percent") {
                            answer = "not quite"
                        }.buttonStyle(
                            .borderedProminent).tint(Color(red: 0.471, green: 0.569, blue: 0.439))
                            .font(.custom("Merriweather-Regular", size: 15))
                        Button("10 percent") {
                            answer = "correct"
                        }
                        .buttonStyle(
                            .borderedProminent).tint(Color(red: 0.471, green: 0.569, blue: 0.439))
                            .font(.custom("Merriweather-Regular", size: 15))
                        Button("50 percent") {
                            answer = "incorrect"
                        }
                        .buttonStyle(
                            .borderedProminent).tint(Color(red: 0.471, green: 0.569, blue: 0.439))
                            .font(.custom("Merriweather-Regular", size: 15))
                        Text(answer)
                        NavigationLink(destination: questiontwo()) {
                            Text("next question")
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
    questionone()
}
