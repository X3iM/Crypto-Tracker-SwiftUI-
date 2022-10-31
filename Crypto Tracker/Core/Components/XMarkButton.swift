//
//  XMarkButton.swift
//  Crypto Tracker
//
//  Created by Artem Hrynenko on 31.10.2022.
//

import SwiftUI

struct XMarkButton: View {
    var dismiss: () -> Void
    
    var body: some View {
        Button(
            action: dismiss, label: {
                Image(systemName: "xmark")
                    .font(.headline)
            }
        )
    }
}

struct XMarkButton_Previews: PreviewProvider {
    static var previews: some View {
        XMarkButton {
            
        }
    }
}
