//
//  BrandButtonView.swift
//  TrivagoCS
//
//  Created by Maziar Layeghkar on 28.02.24.
//

import SwiftUI

struct BrandButtonView: View {
    @StateObject var viewModel = BrandButtonViewModel()
    @State private var isPressed = false

    var body: some View {
        Button(action: {
            isPressed.toggle()
        }) {
            HStack {
                if let leadingIcon = viewModel.leadingIcon {
                    leadingIcon
                        .font(.system(size: 24))
                }
                
                Text(isPressed ? (viewModel.variant == .primaryGreen || viewModel.variant == .primaryBlue || viewModel.variant == .primaryDisabled ? "Primary Pressed" : "Secondary Pressed") : viewModel.label)
                    .fontWeight(.bold)
                    .lineLimit(1)
                    .minimumScaleFactor(0.5)
                    .frame(width: viewModel.size == .medium ? 120 : 150, height: 20)
                
                if let trailingIcon = viewModel.trailingIcon {
                    trailingIcon
                        .font(.system(size: 24))
                }
            }
            .padding()
            .frame(maxWidth: viewModel.fullWidth ? .infinity : nil)
            .background(viewModel.backgroundColor(isPressed: isPressed))
            .foregroundColor(viewModel.foregroundColor(isPressed: isPressed))
            .overlay(
                RoundedRectangle(cornerRadius: viewModel.size == .medium ? 12 : 8)
                    .stroke(lineWidth: viewModel.variant == .secondaryGreen || viewModel.variant == .secondaryBlue || viewModel.variant == .secondaryDisabled ? 1 : 0)
                    .background(
                        BrandButtonAnimationView(animate: $isPressed)
                            .frame(width: 180, height: 50)
                    )
                    .foregroundStyle(viewModel.foregroundColor(isPressed: isPressed))
            )
        }
        .withPressableStyle(scaleAmount: 1.2)
        .disabled(!viewModel.isEnabled)
    }
}

#Preview {
    BrandButtonView(viewModel: BrandButtonViewModel(label: "Base button", variant: .baseButton, leadingIcon: Image(systemName: "square.fill"), trailingIcon: Image(systemName: "square.fill"), isEnabled: false))
        .cornerRadius(8)
}
