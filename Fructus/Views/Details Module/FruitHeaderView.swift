//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Abanoub Emil on 22/04/2021.
//

import SwiftUI

struct FruitHeaderView: View {
    //MARK: Properties
    var fruit: Fruit
    @State private var isAnimatingImage = false
    
    // MARK: Body
    var body: some View {
        
        ZStack {
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(radius: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
        }.onAppear() {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimatingImage = true
            }
        }
        .frame(height: 440)
        
        
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[12])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
