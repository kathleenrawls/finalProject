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
        ["title": "3 Ways You Can Mediate Deforestation",
         "topic": "deforestation",
         "imgSrc": "deforestationForest",
         "author": "Samhita from Sustainable Home",
         "content": "According to the Food and Agriculture Organization of the United Nations, the world has lost about 1 billion acres of forest since 1990. With an exponential decrease in forests around the globe, the root cause of this loss leads back to one primary cause: deforestation. Driven by human activities such as logging, agriculture, and urban development, deforestation also leads to a loss in biodiversity, assisting in wildlife extinctions. To put this in perspective, 70% of Earth’s plants and animals reside in forests, leading to these organisms having a direct impact from deforestation. Furthermore, recent estimates state that deforestation causes about 137 species to be lost daily.With a significant detriment to the world, this practice is evidently for the worst, as it is also a significant contributor to climate change through the release of stored carbon dioxide. However, there are a variety of ways that YOU can slow down the speed of this practice. \n\n\t1) Avoid single-use packaging: This reduces the demand for raw materials, such as wood and paper, which are often sourced in forests. Overall, this practice decreases the need to cut down trees for the production of packaging. \n\n\t2) Eat sustainable foods: This promotes agricultural practices that are environmentally friendly, effectively reducing the need to clear forests for farmland. \n\n\t3) Purchase recycled or responsibly-produced wooden items: This practice reduces the need for new wood, lessening the need to harvest new trees. In terms of promoting sustainable growth, this practice promotes a circular economy, where materials are reused and recycled."]]
    
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                
                Color(red:239/255, green:236/255, blue:230/255)
                    .ignoresSafeArea()
                
                VStack {
                    
                    HStack(spacing:30) {
                        
                        NavigationLink(destination: homePageView()) {
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
                                Button("Deforestation") {
                                    activeTopic = "deforestation"
                                }
                                .foregroundColor(Color(red:110/255, green:101/255, blue:93/255))
                                
                            }
                            NavigationLink(destination: topicView(activeTopic: "water")) {
                                Button("Water") {
                                    activeTopic = "water"
                                }
                                .foregroundColor(Color(red:110/255, green:101/255, blue:93/255))
                            }
                            NavigationLink(destination: topicView(activeTopic: "plastic")) {
                                Button("Plastic") {
                                    activeTopic = "plastic"
                                }
                                .foregroundColor(Color(red:110/255, green:101/255, blue:93/255))
                            }
                            
                        } // HStack
                        
                    } // ScrollView
                    .frame(width: 350, height: 30)
                    
                    VStack(alignment: .leading) {
                        
                        ZStack {
                            
                            Image(activeTopic)
                                .resizable()
                                .frame(width: 350, height: 100)
                                .cornerRadius(13)
                            Text(activeTopic.capitalized)
                                .font(.largeTitle)
                                .foregroundColor(Color.white)
                            
                        }
                        .padding(15.0) // ZStack
                        
                        Text("Articles")
                            .font(.headline)
                            .padding(.leading, 14.0)
                        
                        ScrollView {
                            
                            VStack {
                                
                                ForEach(articles.indices.filter { a in articles[a]["topic"]! == activeTopic}, id: \.self) {article in
                                    
                                    HStack {
                                        
                                        Image(articles[article]["imgSrc"]!)
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 100, height: 100)
                                            .clipShape(Rectangle())
                                            .cornerRadius(13)
                                            .shadow(color: .black.opacity(0.5), radius: 3, x: 2, y: 4)
                                        
                                        NavigationLink(destination: articleView(article: $articles[article])) {
                                            Text(articles[article]["title"]!)
                                                .foregroundColor(Color.black)
                                                .multilineTextAlignment(.leading)
                                        }
                                        .frame(width: 220)
                                        
                                    } // HStack
                                    .frame(width: 350, height: 120)
                                    .background(Rectangle()
                                        .foregroundColor(Color(red: 217/255, green: 217/255, blue: 217/255)))
                                    .cornerRadius(13)
                                    .padding(7)
                                    .shadow(color: .black.opacity(0.5), radius: 4, x: 2, y: 4)
                                    
                                } // ForEach
                                
                            } // VStack
                            
                        } // ScrollView
                        .frame(width: 380)
                        
                    } // VStack
                    
                } // VStack
                
            } // ZStack
            
        } // NavigationStack
        
    }
}

#Preview {
    topicView(activeTopic: "deforestation")
}
