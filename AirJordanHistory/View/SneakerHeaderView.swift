//
//  SneakerHeaderView.swift
//  AirJordanHistory
//
//  Created by Julian-Justin Djoum on 1/26/21.
//  Copyright © 2021 Julian-Justin Djoum. All Rights Reserved.
//

import SwiftUI

struct SneakerHeaderView: View {
    // MARK: - PROPERTIES
    var sneaker: Sneaker
    @State private var isAnimatingImage: Bool = false
    
    // MARK: - BODY
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: sneaker.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(sneaker.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x:6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
        }//-ZSTACK
        .frame(height: 440)
        .onAppear() {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimatingImage = true
            }
        }
    }
}
// MARK: - PREVIEW
struct SneakerHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SneakerHeaderView(sneaker: sneakerData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
