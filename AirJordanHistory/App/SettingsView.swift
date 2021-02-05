//
//  SettingsView.swift
//  AirJordanHistory
//
//  Created by jd. on 1/27/21.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: - SECTION 1
                    GroupBox(
                        label:
                                SettingsLabelView(labelText: "Air Jordan History", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("AJH-1024")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9.0)
                            Text("A Sneaker by Sneaker Breakdown for Sneakerheads and Basketball Fans to learn more about MJ's Unbelievable Career & Legacy!")
                                .font(.footnote)
                        }
                    }//-BOX
                    
                    // MARK: - SECTION 2
                    GroupBox(
                        label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                    ) {
                        Divider().padding(.vertical, 4)
                        Text("If you'd like to see Air Jordan Sneakers 1-6 and their headlines again on the Onboarding Screen, toggle the switch to restart the app.")
                            .padding(.vertical, 4)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.center)
                        
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding()
                        .background(Color(UIColor.tertiarySystemBackground)
                                        .clipShape(RoundedRectangle(cornerRadius: 8,style: .continuous))
                        )
                    }
                    
                    // MARK: - SECTION 3
                    GroupBox(
                        label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                        
                    ) {
                        SettingsRowView(name: "Developer", content: "Julian-Justin Djoum")
                        SettingsRowView(name:"Designer", content:"Julian-Justin Djoum")
                        SettingsRowView(name:"Website", linkLabel: "Air Jordan History GitHub", linkDestination:"github.com/jdjoum")
                        SettingsRowView(name:"Contact", linkLabel: "E-Mail", linkEmail: "jdjoum@hotmail.com")
                        SettingsRowView(name:"LinkedIn", linkLabel: "Profile", linkDestination:"www.linkedin.com/in/julian-justin-djoum-18418a1aa/")
                        SettingsRowView(name:"Compatability", content:"iOS 14")
                        SettingsRowView(name: "Version", content: "1.1.0")
                    }//-BOX
                }//-VSTACK
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark")
                        }
                )
                .padding()
            }//-SCROLL
        }//-NAVIGATION
    }
}
// MARK: - PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
