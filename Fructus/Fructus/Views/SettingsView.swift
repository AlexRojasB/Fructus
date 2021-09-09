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
