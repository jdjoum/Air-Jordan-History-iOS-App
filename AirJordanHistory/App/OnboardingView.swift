//
//  OnboardingView.swift
//  AirJordanHistory
//
//  Created by Julian-Justin Djoum on 1/23/21.
//  Copyright © 2021 Julian-Justin Djoum. All Rights Reserved.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTIES
    
    var sneakers: [Sneaker] = sneakerData
    
    // MARK: - BODY
    var body: some View {
        TabView{
            ForEach(sneakers[0...5]) { item in
                SneakerCardView(sneaker: item)
            } // - LOOP
        } // - TABVIEW
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
        
    }
}
// MARK: - PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(sneakers: sneakerData)
    }
}
