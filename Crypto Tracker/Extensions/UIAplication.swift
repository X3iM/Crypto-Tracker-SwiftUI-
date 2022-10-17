//
//  UIAplication.swift
//  Crypto Tracker
//
//  Created by Artem Hrynenko on 17.10.2022.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
}
