//
//  ContentView.swift
//  TrivagoCS
//
//  Created by Maziar Layeghkar on 28.02.24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //MARK: Primary usage set
//        VStack {
//            HStack {
//                BrandButton(viewModel: BrandButtonViewModel(label: "Primary Default", variant: .primaryGreen))
//                BrandButton(viewModel: BrandButtonViewModel(label: "Primary Default", variant: .primaryBlue))
//                BrandButton(viewModel: BrandButtonViewModel(label: "Primary Default", variant: .primaryDisabled, isEnabled: false))
//            }
//            HStack {
//                BrandButton(viewModel: BrandButtonViewModel(label: "Primary Default", variant: .primaryGreen, leadingIcon: Image(systemName: "square.fill")))
//                BrandButton(viewModel: BrandButtonViewModel(label: "Primary Default", variant: .primaryBlue, leadingIcon: Image(systemName: "square.fill")))
//                BrandButton(viewModel: BrandButtonViewModel(label: "Primary Disabled", variant: .primaryDisabled, leadingIcon: Image(systemName: "square.fill"), isEnabled: false))
//            }
//            HStack {
//                BrandButton(viewModel: BrandButtonViewModel(label: "Primary Default", variant: .primaryGreen, trailingIcon: Image(systemName: "square.fill")))
//                BrandButton(viewModel: BrandButtonViewModel(label: "Primary Default", variant: .primaryBlue, trailingIcon: Image(systemName: "square.fill")))
//                BrandButton(viewModel: BrandButtonViewModel(label: "Primary Disabled", variant: .primaryDisabled, trailingIcon: Image(systemName: "square.fill"), isEnabled: false))
//            }
//        }
        //MARK: Secondary usage set
                VStack {
                    HStack {
                        BrandButtonView(viewModel: BrandButtonViewModel(label: "Secondary Default", variant: .secondaryGreen))
                        BrandButtonView(viewModel: BrandButtonViewModel(label: "Secondary Default", variant: .secondaryBlue))
                        BrandButtonView(viewModel: BrandButtonViewModel(label: "Secondary Disabled", variant: .secondaryDisabled, isEnabled: false))
                    }
                    
                    HStack {
                        BrandButtonView(viewModel: BrandButtonViewModel(label: "Secondary Default", variant: .secondaryGreen, leadingIcon: Image(systemName: "square.fill")))
                        BrandButtonView(viewModel: BrandButtonViewModel(label: "Secondary Default", variant: .secondaryBlue, leadingIcon: Image(systemName: "square.fill")))
                        BrandButtonView(viewModel: BrandButtonViewModel(label: "Secondary Disabled", variant: .secondaryDisabled, leadingIcon: Image(systemName: "square.fill"), isEnabled: false))
                    }
                    
                    HStack {
                        BrandButtonView(viewModel: BrandButtonViewModel(label: "Secondary Default", variant: .secondaryGreen, trailingIcon: Image(systemName: "square.fill")))
                        BrandButtonView(viewModel: BrandButtonViewModel(label: "Secondary Default", variant: .secondaryBlue, trailingIcon: Image(systemName: "square.fill")))
                        BrandButtonView(viewModel: BrandButtonViewModel(label: "Secondary Disabled", variant: .secondaryDisabled, trailingIcon: Image(systemName: "square.fill"), isEnabled: false))
                    }
                }
        
        //MARK: fullWidth, regular and medium sized usage set
//                VStack {
//                    BrandButton(viewModel: BrandButtonViewModel(label: "Primary Default", variant: .primaryGreen,fullWidth: true))
//                    BrandButton(viewModel: BrandButtonViewModel(label: "Secondary Default", variant: .secondaryBlue, size: .regular))
//                    BrandButton(viewModel: BrandButtonViewModel(label: "Secondary Default", variant: .primaryDisabled, isEnabled: false, size: .medium))
//                }
    }
}

#Preview {
    ContentView()
}
