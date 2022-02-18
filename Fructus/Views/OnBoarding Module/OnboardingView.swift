//
//  OnboardingView.swift
//  Fructus
//
//  Created by Abanoub Emil on 20/04/2021.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: Properties
    var fruits: [Fruit] = fruitsData
    
    // MARK: Body
    var body: some View {
        TabView {
            ForEach(fruits[0...4]) { item in
                FruitCardView(fruit: item)
            }
            
        }.tabViewStyle(DefaultTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK: Preview

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
