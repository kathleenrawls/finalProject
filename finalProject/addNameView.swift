//
//  addNameView.swift
//  finalProject
//
//  Created by scholar on 8/2/24.
//

import SwiftUI

struct addNameView: View {
    
    @State private var username = ""
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                Color(red: 239/255, green: 236/255, blue: 230/255)
                    .ignoresSafeArea()
                
                VStack (spacing: 30) {
                    
                    Image("logo")
                        .resizable()
                        .frame(width: 200, height: 200)
                        .clipShape(Circle())
                    
                    TextField("Enter your name", text: $username)
                        .padding(12)
                        .background(Color(red: 217/255, green: 217/255, blue: 217/255))
                        .clipShape(Capsule())
                        .font(.custom("merriweather", size: 15))
                    
                    NavigationLink(destination: homePageView(username: $username)) {
                        Text("Continue")
                    }
                    .padding(12)
                    .background(Color(red: 120/255, green: 145/255, blue: 112/255))
                    .foregroundStyle(.white)
                    .clipShape(Capsule())
                    .font(.custom("merriweather", size: 15))
                    
                } // VStack
                .frame(width: 300)
                
            } // ZStack
            
        } // NavigationView
        
    }
}

#Preview {
    addNameView()
}
