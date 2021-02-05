//
//  SettingsLabelView.swift
//  AirJordanHistory
//
//  Created by Julian-Justin Djoum on 1/27/21.
//  Copyright © 2021 Julian-Justin Djoum. All Rights Reserved.
//

import SwiftUI

struct SettingsLabelView: View {
    // MARK: - PROPERTIES
    var labelText: String
    var labelImage: String
    
    // MARK: - BODY
    
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}
// MARK: - PREVIEW
struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Air Jordan History", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
