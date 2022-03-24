//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Abanoub Emil on 23/04/2021.
//

import SwiftUI

struct SettingsRowView: View {
    // MARK: PROPERTIES
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    // MARK: BODY
    
    var body: some View {
        
        VStack {
            Divider().padding(.vertical, 4)
            
            HStack(alignment: .center, spacing: 10) {
                
                Text(name).foregroundColor(.gray)
                
                Spacer()
                
                if let content = self.content {
                    
                Text(content)
                    .font(.footnote).bold()
                    
                } else if let link = self.linkLabel, let destination = self.linkDestination, let url = URL(string: "https://\(destination)") {
                    
                    Link(link, destination: url)
                    
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                } else {
                    EmptyView()
                }
                
            }
        }
        
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name: "Developer", content: "John / Jane")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
            SettingsRowView(name: "Abanoub", linkLabel: "Abanoub Master Class", linkDestination: "www.google.com")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
    }
}
