//
//  BrandButtonAnimation.swift
//  TrivagoCS
//
//  Created by Maziar Layeghkar on 28.02.24.
//

import Foundation
import SwiftUI

struct BrandButtonAnimationView: View {
    
    @Binding var animate: Bool
    
    var body: some View {
        Rectangle()
            .stroke(lineWidth: 2.0)
            .scale(animate ? 1.0 : 0.0)
            .opacity(animate ? 0.0 : 1.0)
            .animation(.easeInOut(duration: 3.0), value: animate)
    }
}
