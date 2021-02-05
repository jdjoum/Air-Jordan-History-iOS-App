//
//  SneakerRowView.swift
//  AirJordanHistory
//
//  Created by Julian-Justin Djoum on 1/25/21.
//  Copyright © 2021 Julian-Justin Djoum. All Rights Reserved.
//

import SwiftUI

struct SneakerRowView: View {
    // MARK: - PROPERTIES
    var sneaker: Sneaker
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Image(sneaker.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x:2, y:2)
                .background(LinearGradient(gradient: Gradient(colors: sneaker.gradientColors), startPoint: .top, endPoint: .bottom))
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(sneaker.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(sneaker.headline)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
                
            }
        } //-HSTACK
        
    }
    
}
// MARK: - PREVIEW
struct SneakerRowView_Previews: PreviewProvider {
    static var previews: some View {
        SneakerRowView(sneaker: sneakerData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
