//
//  addArticleView.swift
//  finalProject
//
//  Created by scholar on 8/1/24.
//

import SwiftUI
import PhotosUI

struct addArticleView: View {
    
    @State private var avatarItem: PhotosPickerItem?
    @State private var avatarImage: Image?
    @Environment(\.dismiss) var dismiss
    @State private var pickerVal = ""
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                Color(red:239/255, green:236/255, blue:230/255)
                    .ignoresSafeArea()
                
                VStack (spacing: 30) {
                    Text("Add a new article")
                        .font(.custom("merriweather", size: 30))
                    
                    VStack {
                        PhotosPicker("Select article image", selection: $avatarItem, matching: .images)
                            .font(.custom("merriweather", size: 15))
                        
                        avatarImage?
                            .resizable()
                            .scaledToFit()
                            .frame(width: 300, height: 300)
                    }
                    .onChange(of: avatarItem) {
                        Task {
                            if let loaded = try? await avatarItem?.loadTransferable(type: Image.self) {
                                avatarImage = loaded
                            } else {
                                print("Failed")
                            }
                        }
                    }
                    
                    VStack {
                        Picker("Topic", selection: $pickerVal) {
                            Text("Deforestation")
                            Text("Water")
                            Text("Plastic")
                        }
                    }
                    
                    TextField("Title", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                        .font(.custom("merriweather", size: 15))
                    TextField("Author", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                        .font(.custom("merriweather", size: 15))
                    TextField("Content", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                        .font(.custom("merriweather", size: 15))
                    
                    Button("Add Article") {
                        dismiss()
                    }
                    .padding(12)
                    .background(Color(red: 120/255, green: 145/255, blue: 112/255))
                    .foregroundStyle(.white)
                    .clipShape(Capsule())
                    .font(.custom("merriweather", size: 15))
                    
                } // VStack
                .frame(width: 350)
                
            } // ZStack
            
        } // NavigationView
        
    } // Body
}

#Preview {
    addArticleView()
}
