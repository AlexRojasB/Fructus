//
//  FructusApp.swift
//  Fructus
//
//  Created by Alexander Rojas Benavides on 7/6/21.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnBoarding") var isOnBoarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnBoarding {
                OnBoardingView()
            }
            else {
                ContentView()
            }
            
        }
    }
}
