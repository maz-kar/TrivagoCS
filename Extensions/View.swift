//
//  View.swift
//  TrivagoCS
//
//  Created by Maziar Layeghkar on 28.02.24.
//

import Foundation
import SwiftUI

extension View {
    
    func withPressableStyle(scaleAmount: CGFloat) -> some View {
        buttonStyle(PressableBrandButtonStyle(scaleAmount: scaleAmount))
    }
}
