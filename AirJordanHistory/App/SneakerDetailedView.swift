//
//  SneakerDetailedView.swift
//  AirJordanHistory
//
//  Created by jd. on 1/25/21.
//

import SwiftUI

struct SneakerDetailedView: View {
    //MARK: - PROPERTIES
    var sneaker: Sneaker
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    // HEADER
                    SneakerHeaderView(sneaker: sneaker)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        // TITLE
                        Text(sneaker.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(sneaker.gradientColors[0])
                        
                        // HEADLINE
                        Text(sneaker.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        // YEAR
                        Text("Design Year: " + sneaker.designYear)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.leading)
                        
                        // SUBHEADLINE
                        Text("Learn more about the \(sneaker.title)".uppercased())
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(sneaker.gradientColors[0])
                            
                        
                        // DESCRIPTION
                        Text(sneaker.description)
                            .lineSpacing(15)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        
                        // DEFINING MOMENT
                        Text("Defining Moment".uppercased())
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(sneaker.gradientColors[0])
                        Image(sneaker.definingMoment)
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(5.0)
                            .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 8, x:6, y: 8)
                            
                        // LINK
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 20)
                    }//-VSTACK
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }//-VSTACK
                .navigationBarTitle(sneaker.title, displayMode: .inline)
                .navigationBarHidden(true)
            }//-SCROLL
            .edgesIgnoringSafeArea(.top)
        }//-NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
    }
}
//MARK: - PREVIEW
struct SneakerDetailedView_Previews: PreviewProvider {
    static var previews: some View {
        SneakerDetailedView(sneaker: sneakerData[10])
    }
}
