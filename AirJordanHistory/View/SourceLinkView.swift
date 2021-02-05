//
//  SourceLinkView.swift
//  AirJordanHistory
//
//  Created by jd. on 1/26/21.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content Source")
                Spacer()
                Link("Air Jordan History Wikipedia", destination: URL(string:"https://en.wikipedia.org/wiki/Air_Jordan")!)
                Image(systemName: "arrow.up.right.square")
            }
        }
            .font(.footnote)
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
