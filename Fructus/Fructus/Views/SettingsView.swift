//
//  SettingsView.swift
//  Fructus
//
//  Created by Alexander Rojas Benavides on 9/8/21.
//

import SwiftUI

struct SettingsView: View {
    //MARK: - Properties
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    //MARK: - Body
    var body: some View {
        NavigationView{
            ScrollView {
                VStack(spacing: 20) {
                    GroupBox(label:
                       SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ){
                        
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10, content: {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium, and calores. None have colesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        })
                    } //GroupBox
                    
                    GroupBox(label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")){
                        Divider().padding(.vertical, 4)
                        Text("If you wish, you can restart the application by toggle the switch in this box. Tha way it starts the onboarding process and you will see the welcome screen again.")
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
                                    .foregroundColor(Color.secondary)                            }
                        }
                        .padding()
                        .background(Color(UIColor.tertiarySystemBackground)
                                        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous)))
                    }
                    
                    
                    GroupBox(label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")){                        SettingsRowView(name: "Developer", content: "Alexander Rojas")
                        SettingsRowView(name: "Designer", content: "Robert Petras")
                        SettingsRowView(name: "Compatibility", content: "iOS 14")
                        SettingsRowView(name: "Website", linkLabel: "SWiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                        SettingsRowView(name: "Twitter", linkLabel: "@alexrrojasb", linkDestination: "twitter.com/alexrrojasb")
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                        SettingsRowView(name: "Version", content: "1.1.0")
                    }
                }
            }
            .navigationBarTitle("Settings", displayMode: .large)
            .navigationBarItems(trailing:  Button(action: {
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
    }
}
