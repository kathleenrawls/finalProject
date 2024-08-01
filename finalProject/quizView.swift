//
//  quizView.swift
//  finalProject
//
//  Created by Rui Bo on 8/1/24.
//


import SwiftUI

struct quizView: View {
    var body: some View {
        NavigationStack {
            
            ZStack {
                Color(red: 239/255, green: 236/255, blue: 230/255)
                        .ignoresSafeArea()
                VStack {
                    Image("plasticQuiz")
                        .resizable().aspectRatio(contentMode: .fit)
                        .cornerRadius(30)
                        .padding(.all, 15.0)
                    Text("Plastic Quiz")
                        .font(.custom("groovyfont", size: 20))
                        .fontWeight(.bold)
                        .padding(5)
                    Text ("Test out your plastic knowledge with this quiz!")
                        .font(.custom("Merriweather-Regular", size: 15))
                        
    
                    NavigationLink(destination: questionone()) {
                        Text("Start Quiz")
                            .font(.custom("Merriweather-Regular", size: 15))
                            .fontWeight(.bold)
                            .foregroundColor(Color(red: 0.513, green: 0.413, blue: 0.326))
                    }
                    .padding(15)
                    
                }
                
            }
            
        }
        
        
    }
    }
    


#Preview {
    quizView()
}
