//
//  Crypto_TrackerApp.swift
//  Crypto Tracker
//
//  Created by Artem Hrynenko on 11.10.2022.
//

import SwiftUI

@main
struct Crypto_TrackerApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView().navigationBarHidden(true)
            }
        }
    }
}
