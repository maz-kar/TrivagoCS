//
//  BrandButtonViewModel.swift
//  TrivagoCS
//
//  Created by Maziar Layeghkar on 14.03.24.
//

import Foundation
import SwiftUI

class BrandButtonViewModel: ObservableObject {
    
    var label: LocalizedStringKey
    var variant: BaseButtonStyle.Variant
    var leadingIcon: Image?
    var trailingIcon: Image?
    var fullWidth: Bool
    var isEnabled: Bool
    var size: BaseButtonStyle.Size
    
    init(label: LocalizedStringKey = "Primary Default", variant: BaseButtonStyle.Variant = .primaryGreen, leadingIcon: Image? = nil, trailingIcon: Image? = nil, fullWidth: Bool = false, isEnabled: Bool = true, size: BaseButtonStyle.Size = .regular) {
        self.label = label
        self.variant = variant
        self.leadingIcon = leadingIcon
        self.trailingIcon = trailingIcon
        self.fullWidth = fullWidth
        self.isEnabled = isEnabled
        self.size = size
    }
    
    func backgroundColor(isPressed: Bool) -> Color {
        switch (variant, isPressed) {
        case (.primaryGreen, true):
            return Color.backgroundColors.primaryPressedGreen
        case (.primaryGreen, false):
            return Color.backgroundColors.primaryDefaultGreen
        case (.primaryBlue, true):
            return Color.backgroundColors.primaryPressedBlue
        case (.primaryBlue, false):
            return Color.backgroundColors.primaryDefaultBlue
        case (.secondaryGreen, true):
            return Color.backgroundColors.secondaryPressedGreenBack
        case (.secondaryBlue, true):
            return Color.backgroundColors.secondaryPressedBlueBack
        case (.secondaryBlue, false), (.secondaryGreen, false), (.secondaryDisabled, _):
            return Color.white
        case (.primaryDisabled, _):
            return Color.backgroundColors.primaryDisabledGray
        case (.baseButton, _):
            return Color.backgroundColors.backgroundBaseButton
        }
    }
    
    func foregroundColor(isPressed: Bool) -> Color {
        switch (variant, isPressed) {
        case (.primaryGreen, _), (.primaryBlue, _), (.primaryDisabled, _):
            return Color.white
        case (.secondaryGreen, true):
            return Color.foregroundColors.secondaryPressedGreenFore
        case (.secondaryGreen, false):
            return Color.foregroundColors.secondaryDefaultGreen
        case (.secondaryBlue, true):
            return Color.foregroundColors.secondaryPressedBlueFore
        case (.secondaryBlue, false):
            return Color.foregroundColors.secondaryDefaultBlue
        case (.secondaryDisabled, _):
            return Color.foregroundColors.secondaryDisabledGray
        case (.baseButton, _):
            return Color.foregroundColors.foregroundBaseButton
        }
    }
}
