//
//  FructusApp.swift
//  Fructus
//
//  Created by Abanoub Emil on 20/04/2021.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding")
    var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
               ContentView()
            }
        }
    }
}
