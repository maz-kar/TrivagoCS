//
//  BrandButtonView.swift
//  TrivagoCS
//
//  Created by Maziar Layeghkar on 28.02.24.
//

import SwiftUI

struct BrandButton: View {
    
    @State private var isPressed = false
    
    var label: LocalizedStringKey
    var variant: BaseButtonStyle.Variant
    var leadingIcon: Image?
    var trailingIcon: Image?
    var fullWidth: Bool
    var isEnabled: Bool
    var size: BaseButtonStyle.Size
    
    init(label: LocalizedStringKey, variant: BaseButtonStyle.Variant, leadingIcon: Image? = nil, trailingIcon: Image? = nil, fullWidth: Bool = false, isEnabled: Bool = true, size: BaseButtonStyle.Size = .regular) {
        self.label = label
        self.variant = variant
        self.leadingIcon = leadingIcon
        self.trailingIcon = trailingIcon
        self.fullWidth = fullWidth
        self.isEnabled = isEnabled
        self.size = size
    }
    
    var backgroundColor: Color {
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
    
    var foregroundColor: Color {
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
    
    var body: some View {
        Button(action: {
            isPressed.toggle()
        }) {
            HStack {
                if let leadingIcon = leadingIcon {
                    leadingIcon
                        .font(.system(size: 24))
                }
                
                Text(isPressed ? (variant == .primaryGreen || variant == .primaryBlue || variant == .primaryDisabled ? "Primary Pressed" : "Secondary Pressed") : label)
                    .fontWeight(.bold)
                    .lineLimit(1)
                    .minimumScaleFactor(0.5)
                    .frame(width: size == .medium ? 120 : 150, height: 20)
                    .background(
                        BrandButtonAnimationView(animate: $isPressed)
                    )

                
                if let trailingIcon = trailingIcon {
                    trailingIcon
                        .font(.system(size: 24))
                }
            }
            .padding()
            .frame(maxWidth: fullWidth == true ? .infinity : nil)
            .background(backgroundColor)
            .foregroundColor(foregroundColor)
            .cornerRadius(size == .medium ? 12 : 8)
            .overlay(
                RoundedRectangle(cornerRadius: size == .medium ? 12 : 8)
                    .stroke(lineWidth: variant == .secondaryGreen || variant == .secondaryBlue || variant == .secondaryDisabled ? 1 : 0)
                    .foregroundStyle(foregroundColor)
            )
        }
        .withPressableStyle(scaleAmount: 0.9)
        .disabled(!isEnabled)
    }
}

#Preview {
    BrandButton(label: "Base button", variant: .baseButton, leadingIcon: Image(systemName: "square.fill"), trailingIcon: Image(systemName: "square.fill"), isEnabled: false)
}
