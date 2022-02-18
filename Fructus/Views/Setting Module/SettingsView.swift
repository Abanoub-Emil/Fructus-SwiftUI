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
    
    
    // MARK: BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                
                GroupBox(
                    label: SettingsLabelView(labelText: "Fructus", labelImage: "info.image")) {
                    
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
