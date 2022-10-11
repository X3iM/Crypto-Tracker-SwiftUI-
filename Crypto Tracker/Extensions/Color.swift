//
//  Color.swift
//  Crypto Tracker
//
//  Created by Artem Hrynenko on 11.10.2022.
//

import Foundation
import SwiftUI


extension Color {
    static let theme = ColorTheme()
}

struct ColorTheme {
    let accent = Color("AccentColor")
    let background = Color("BackgroundColor")
    let green = Color("GreenColor")
    let red = Color("RedColor")
    let secondaryText = Color("secondaryTextColor")
}
