//
//  AirJordanHistoryApp.swift
//  AirJordanHistory
//
//  Created by jd. on 1/21/21.
//

import SwiftUI

@main
struct AirJordanHistoryApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding{
                OnboardingView()
            } else {
                ContentView()
            }
            
        }
    }
}
