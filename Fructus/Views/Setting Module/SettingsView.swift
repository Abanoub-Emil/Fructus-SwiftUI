//
//  SettingsView.swift
//  Fructus
//
//  Created by Abanoub Emil on 23/04/2021.
//

import SwiftUI

struct SettingsView: View {
    // MARK: PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding = false
    
    // MARK: BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                
                GroupBox(
                    label: SettingsLabelView(labelText: "Fructus", labelImage: "info.image")) {
                    
                    Divider().padding(.vertical, 4)
                    
                    HStack(alignment: .center, spacing: 10) {
                        Image("logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .cornerRadius(9)
                        
                        Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, viamins, and much more.")
                            .font(.footnote)
                    }
                }
                
                
                GroupBox(
                    label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")) {
                    
                    Divider().padding(.vertical, 4)
                    
                    Text("If you wish, you can restart the application by the toggle the switch in this box. That way it starts If you wish, you can restart the application by the toggle the switch in this box. That way it starts")
                        .padding(.vertical, 8)
                        .frame(minHeight: 60)
                        .layoutPriority(1)
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    
                    Toggle(isOn: $isOnboarding) {
                        if isOnboarding {
                            Text("Restarted".uppercased())
                                .fontWeight(.bold)
                                .foregroundColor(Color.green)
                        } else {
                            Text("Restart".uppercased())
                                .fontWeight(.bold)
                                .foregroundColor(Color.secondary)
                        }
                    }.padding()
                    .background(Color(UIColor.tertiarySystemBackground))
                    .clipShape(RoundedRectangle(cornerRadius: 8.0, style: .continuous))
                }
                
                
                GroupBox(
                    label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")) {
                    
                    SettingsRowView(name: "Developer", content: "John / Jane")
                    SettingsRowView(name: "Desinger", content: "Robert Petras")
                    SettingsRowView(name: "Compatability", content: "iOS 14")
                    SettingsRowView(name: "Website", linkLabel: "SwiftUI MASTERCLASS", linkDestination: "swiftuimasterclass.com")
                    SettingsRowView(name: "Facebook", linkLabel: "@faxTheGreat", linkDestination: "facebook.com")
                    SettingsRowView(name: "SwiftUI", content: "2.0")
                    SettingsRowView(name: "Version", content: "1.1.0")
                }
                
            
        }.navigationBarTitle(Text("Settings"), displayMode: .large)
        .navigationBarItems(
            trailing:
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark")
                }))
        .padding()
    }
}
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 300, height: 670))
        
    }
}
