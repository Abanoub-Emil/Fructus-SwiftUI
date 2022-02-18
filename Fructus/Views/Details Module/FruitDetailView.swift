//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Abanoub Emil on 22/04/2021.
//

import SwiftUI

struct FruitDetailView: View {
    // MARK: Properties
    var fruit: Fruit
    
    // MARK: Body
    var body: some View {
        NavigationView {
            ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false, content: {
                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20, content: {
                    
                    FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 20, content: {
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        FruitNutrientsView(fruit: fruit)
                        
                        Text("Learn More About \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                            .cornerRadius(12)
                        
                    })// Vstack
                    .padding(.horizontal, 12)
                    .frame(maxWidth: 640, alignment: .center)
                    
                }).navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
                
            }).edgesIgnoringSafeArea(.top)
        }   // NAVIGATION
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[12])
            .previewLayout(.fixed(width: 340, height: 600))
    }
}
