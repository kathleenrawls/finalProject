//
//  topicView.swift
//  finalProject
//
//  Created by scholar on 7/30/24.
//

import SwiftUI

struct topicView: View {
    
    @State public var activeTopic: String
    // Articles "database"
    @State public var articles = [
        ["title": "3 Small Ways You Can Save Water",
         "topic": "water",
         "imgSrc": "oceanWater",
         "author": "Angela from Sustainable Home",
         "content": "\tDid you know that roughly 8 trillion liters of water are wasted worldwide yearly? Yet, 3 billion people globally live in conditions of water scarcity. Water is one of our most precious resources, but we waste it every day. Here are small things you can do at home to help reduce your water waste: \n\n\t1) Collect your shower water. When you’re about to shower and you’re waiting for the shower to turn warm, what do you do? Are you letting it run? If so, you can try collecting that water for other uses; such as flushing the toilet or watering your garden. \n\t2) Regularly check your home for leaks. This will save your water bill and also the environment. A leaky faucet can waste up to 140 gallons of water a week. Sink leaks, toilet leaks, faucet leaks, etc. Check them all! Save your water and save your wallet!\n\t3) Only run your washing machine when it's full. Washing machines will typically use the same amount of water no matter the load, so make sure you are loading as much clothing as possible. Washing machines on average use about 35-50 gallons of water per wash, so make sure you are using it as efficiently as possible!"],
        ["title": "5 Craft Ideas to Reuse Plastic Bottles",
         "topic": "plastic",
         "imgSrc": "plasticBottles",
         "author": "Kathleen from Sustainable Home",
         "content": "\tIn the world, almost 60 million plastic bottles are thrown away each day. These plastics are not good for the environment, and they will stay in landfills and water sources for a long time. Plastic bottles take up to 1000 years to completely decompose, which means that they will be in the water for a long time.\n\n\tHowever, there are ways that we can reduce the number of plastic bottles that end up this way. One way is through reusing them. Below are five fun crafts you can do with plastic bottles to keep them from being thrown away.\n\n\t1) Pen holder: Cut the top part off of a plastic bottle and use the bottom to make a creative pen holder. You can paint it or decorate it however you want.\n\t2) Vase: You can paint or decorate an entire bottle to transform it into a lovely flower vase.\n\t3) Sprinkler system: If you cut many holes into the sides of a plastic bottle, you can connect it to a hose to use as an outdoor sprinkler system. The water will spray out through all of the holes.\n\t4) Creative lamp fixtures: If you cut off the top part of a bottle, you can put it around a small light bulb to create a light fixture. You can make a standing lamp or a hanging bulb decoration.\n\t5) Mini worlds: If you are interested in dioramas or miniature creations, why not make an entire miniature world inside a bottle?"],
        ["title": "Deforestation article title",
         "topic": "deforestation",
         "imgSrc": "",
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
        
        NavigationView {
            
            ScrollView {
                
                VStack {
                    
                    ForEach(articles.filter { a in a["topic"]! == activeTopic}, id: \.self) {article in
                        
                        HStack {
                            
                            Image(article["imgSrc"]!)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 100, height: 100)
                                .clipShape(Rectangle())
                            
                            Text(article["title"]!)
                                .frame(width: 210)
                            
                        }
                        .frame(width: 350, height: 120)
                        .background(Rectangle()
                            .foregroundColor(.green))
                        
                    } // ForEach
                    
                } // VStack
                
            } // ScrollView
            
        } // NavigationView
        
        
    }
}

#Preview {
    topicView(activeTopic: "deforestation")
}
