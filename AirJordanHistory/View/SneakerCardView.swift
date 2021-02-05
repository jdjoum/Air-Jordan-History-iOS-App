//
//  SneakerCardView.swift
//  AirJordanHistory
//
//  Created by Julian-Justin Djoum on 1/21/21.
//  Copyright © 2021 Julian-Justin Djoum. All Rights Reserved.
//

import SwiftUI

struct SneakerCardView: View {
    // MARK: - PROPERTIES
    @State private var isAnimating: Bool = false
    
    var sneaker: Sneaker
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // SNEAKER: IMAGE
                Image(sneaker.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0: 0.6)
                
                // SNEAKER: TITLE
                Text(sneaker.title)
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                
                // SNEAKER: HEADLINE
                Text(sneaker.headline)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                // BUTTON: START
                StartButtonView()
            } //: VSTACK
        } //: ZSTACK
        .onAppear{
            withAnimation(.easeOut(duration:0.5)) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: sneaker.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}
// MARK: - PREVIEW
struct SneakerCardView_Previews: PreviewProvider {
    static var previews: some View {
        SneakerCardView(sneaker: sneakerData[0])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
