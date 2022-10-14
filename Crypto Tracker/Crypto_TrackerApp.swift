//
//  Crypto_TrackerApp.swift
//  Crypto Tracker
//
//  Created by Artem Hrynenko on 11.10.2022.
//

import SwiftUI

@main
struct Crypto_TrackerApp: App {
    
    @StateObject private var homeViewModel = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView().navigationBarHidden(true)
            }
            .environmentObject(homeViewModel)
        }
    }
}
