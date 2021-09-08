//
//  ContentView.swift
//  Fructus
//
//  Created by Alexander Rojas Benavides on 7/6/21.
//

import SwiftUI

struct ContentView: View {
    var fruits:[Fruit] = fruitsData
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits) { item in
                    FruitRowView(fruit: item)
                        .padding(.vertical, 4)
                }
            }
        }
        .navigationTitle("Fruits")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
