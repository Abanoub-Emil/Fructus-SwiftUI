//
//  FruitModel.swift
//  Fructus
//
//  Created by Abanoub Emil on 22/04/2021.
//

import SwiftUI

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]

}
