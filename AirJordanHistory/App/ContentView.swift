//
//  ContentView.swift
//  AirJordanHistory
//
//  Created by Julian-Justin Djoum on 1/21/21.
//  Copyright © 2021 Julian-Justin Djoum. All Rights Reserved.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    @State private var isShowingSettings: Bool = false
    var sneakers: [Sneaker] = sneakerData
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            List{
                ForEach(sneakers) { item in
                    NavigationLink(destination: SneakerDetailedView(sneaker: item)) {
                        SneakerRowView(sneaker: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Air Jordan History")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingSettings = true
                    }) {
                        Image(systemName: "slider.horizontal.3")
                    }//-BUTTON
                    .sheet(isPresented: $isShowingSettings) {
                        SettingsView()
                    }
            )
        }//-NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}
// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(sneakers: sneakerData)
    }
}
