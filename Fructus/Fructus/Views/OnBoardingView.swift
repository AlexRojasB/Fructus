//
//  OnBoardingView.swift
//  Fructus
//
//  Created by Alexander Rojas Benavides on 7/8/21.
//

import SwiftUI

struct OnBoardingView: View {
    //MARK: - Properties
    var fruits: [Fruit] = fruitsData
    
    //MARK: - Body
    var body: some View {
        TabView {
            ForEach(0..<5) {item in
               // FruitCardView()
                ForEach(fruits[0...5]) { item in
                    FruitCardView(fruit: item)
                }
            }//: Loop
        } //: TabView
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

//MARK: - Preview
struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView(fruits: fruitsData)
    }
}
