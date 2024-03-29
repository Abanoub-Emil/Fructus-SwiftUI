//
//  FruitCardView.swift
//  Fructus
//
//  Created by Abanoub Emil on 20/04/2021.
//

import SwiftUI

struct FruitCardView: View {
    // MARK: Properties
    var fruit: Fruit
    @State private var isAnimating: Bool = false
    
    // MARK: Body
    var body: some View {
        ZStack {
            VStack(alignment: .center, spacing: 20, content: {
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.3), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
                Text(fruit.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                StartButtonView()
                
            })
        }.onAppear() {
            withAnimation(.easeOut(duration: 1)) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0, idealWidth: .infinity, maxWidth: .infinity, minHeight: 0, idealHeight: .infinity, maxHeight: .infinity, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

// MARK: Preview

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData[1])
            .previewLayout(.fixed(width: 350, height: 750))
    }
}
