//
//  AirJordanHistoryApp.swift
//  AirJordanHistory
//
//  Created by Julian-Justin Djoum on 1/21/21.
//  Copyright © 2021 Julian-Justin Djoum. All Rights Reserved.
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
