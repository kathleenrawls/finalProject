//
//  articleView.swift
//  finalProject
//
//  Created by scholar on 7/31/24.
//

import SwiftUI

struct articleView: View {
    
    @Binding public var article : [String : String]
    
    var body: some View {
        
        ZStack {
            
            Color(red:239/255, green:236/255, blue:230/255)
                .ignoresSafeArea()
            
            ScrollView {
                
                VStack(spacing: 20) {
                    
                    Image(article["imgSrc"]!)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 200)
                        .clipShape(Rectangle())
                    
                    VStack(alignment: .leading, spacing: 10) {
                        
                        Text(article["title"]!)
                            .font(.custom("merriweather", size: 30))
                        
                        Text(article["topic"]!)
                            .font(.custom("merriweather", size: 20))
                        
                        Text("Written by " + article["author"]!)
                            .font(.custom("merriweather", size: 15))
                            .fontWeight(.light)
                            .padding(.bottom, 20)
                        
                        Text(article["content"]!)
                            .font(.custom("merriweather", size: 15))
                        
                    } // VStack
                    
                } // VStack
                
            } // ScrollView
            .frame(width: 330, height: 670)
            
        } // ZStack
        
    } // Body
}

#Preview {
    articleView(article: .constant(["title": "3 Small Ways You Can Save Water", "topic": "water", "imgSrc": "oceanWater", "author": "Angela from Sustainable Home", "content": "\tDid you know that roughly 8 trillion liters of water are wasted worldwide yearly? Yet, 3 billion people globally live in conditions of water scarcity. Water is one of our most precious resources, but we waste it every day. Here are small things you can do at home to help reduce your water waste: \n\n\t1) Collect your shower water. When you’re about to shower and you’re waiting for the shower to turn warm, what do you do? Are you letting it run? If so, you can try collecting that water for other uses; such as flushing the toilet or watering your garden. \n\t2) Regularly check your home for leaks. This will save your water bill and also the environment. A leaky faucet can waste up to 140 gallons of water a week. Sink leaks, toilet leaks, faucet leaks, etc. Check them all! Save your water and save your wallet!\n\t3) Only run your washing machine when it's full. Washing machines will typically use the same amount of water no matter the load, so make sure you are loading as much clothing as possible. Washing machines on average use about 35-50 gallons of water per wash, so make sure you are using it as efficiently as possible!"]))
}
