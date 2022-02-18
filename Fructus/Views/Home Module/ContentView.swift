//
//  ContentView.swift
//  Fructus
//
//  Created by Abanoub Emil on 20/04/2021.
//

import SwiftUI

struct ContentView: View {
    // MARK: Properties
    var fruits = fruitsData
    
    @State private var isShowingSettings = false
    
    
    // MARK: Body
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(
                        destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }.navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingSettings = true
                    }
                    , label: {
                        Image(systemName: "slider.horizontal.3")
                    }).sheet(isPresented: $isShowingSettings) {
                        SettingsView()
                    }
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
            .previewLayout(.fixed(width: 400, height: 750))
    }
}
