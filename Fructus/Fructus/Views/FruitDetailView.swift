//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Alexander Rojas Benavides on 9/7/21.
//

import SwiftUI

struct FruitDetailView: View {
    //: MARK - Properties
    var fruit: Fruit
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators:false) {
                VStack(alignment: .center, spacing: 20) {
                    //: Header
                    FruitHeaderView(fruit: fruit)
                    VStack(alignment: .leading, spacing: 20) {
                        //: Title
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //: Headline
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        //: Nutrients
                        
                        //: Subheadline
                        
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //: Description
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        
                        //: Link
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                        
                    }
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            }
            .edgesIgnoringSafeArea(.top)
        }
            
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}
