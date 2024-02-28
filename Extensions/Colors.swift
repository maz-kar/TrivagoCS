//
//  Colors.swift
//  TrivagoCS
//
//  Created by Maziar Layeghkar on 28.02.24.
//

import Foundation
import SwiftUI

extension Color {
    static let backgroundColors = BackgroundColors()
    static let foregroundColors = ForegroundColors()
}

struct BackgroundColors {
    let primaryDefaultGreen = Color("PrimaryDefaultGreen")
    let primaryDefaultBlue = Color("PrimaryDefaultBlue")
    let primaryPressedGreen = Color("PrimaryPressedGreen")
    let primaryPressedBlue = Color("PrimaryPressedBlue")
    let primaryDisabledGray = Color("PrimaryDisabledGray")
    let secondaryPressedBlueBack = Color("SecondaryPressedBlueBack")
    let secondaryPressedGreenBack = Color("SecondaryPressedGreenBack")
    let backgroundBaseButton = Color("BackgroundBaseButton")
}

struct ForegroundColors {
    let secondaryDefaultGreen = Color("SecondaryDefaultGreen")
    let secondaryDefaultBlue = Color("SecondaryDefaultBlue")
    let secondaryPressedGreenFore = Color("SecondaryPressedGreenFore")
    let secondaryPressedBlueFore = Color("SecondaryPressedBlueFore")
    let secondaryDisabledGray = Color("SecondaryDisabledGray")
    let foregroundBaseButton = Color("ForegroundBaseButton")
}
