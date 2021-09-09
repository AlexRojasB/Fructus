//
//  ContentView.swift
//  Fructus
//
//  Created by Alexander Rojas Benavides on 7/6/21.
//

import SwiftUI

struct ContentView: View {
    var fruits:[Fruit] = fruitsData
    @State private var isShowingSettings: Bool = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits) { item in
                    NavigationLink(
                        destination: FruitDetailView(fruit: item)) {
                    FruitRowView(fruit: item)
                        .padding(.vertical, 4)
                }
                }
            }
        }
        .navigationBarTitle("Fruits")
        .navigationBarItems(trailing: Button(action: { isShowingSettings = true}) {
            Image(systemName: "slider.horizontal.3")
        }
        .sheet(isPresented: $isShowingSettings) {
            SettingsView()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
