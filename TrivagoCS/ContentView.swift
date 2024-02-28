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
        VStack {
            HStack {
                BrandButton(label: "Primary Default", variant: .primaryGreen)
                
                BrandButton(label: "Primary Default", variant: .primaryBlue)
                
                BrandButton(label: "Primary Default", variant: .primaryDisabled, isEnabled: false)
            }
            HStack {
                BrandButton(label: "Primary Default", variant: .primaryGreen, leadingIcon: Image(systemName: "square.fill"))
                
                BrandButton(label: "Primary Default", variant: .primaryBlue, leadingIcon: Image(systemName: "square.fill"))
                
                BrandButton(label: "Primary Disabled", variant: .primaryDisabled, leadingIcon: Image(systemName: "square.fill"), isEnabled: false)
            }
            HStack {
                BrandButton(label: "Primary Default", variant: .primaryGreen, trailingIcon: Image(systemName: "square.fill"))
                
                BrandButton(label: "Primary Default", variant: .primaryBlue, trailingIcon: Image(systemName: "square.fill"))
                
                BrandButton(label: "Primary Disabled", variant: .primaryDisabled, trailingIcon: Image(systemName: "square.fill"), isEnabled: false)
            }
        }
        //MARK: Secondary usage set
        //        VStack {
        //            HStack {
        //                BrandButton(label: "Secondary Default", variant: .secondaryGreen)
        //                
        //                BrandButton(label: "Secondary Default", variant: .secondaryBlue)
        //                
        //                BrandButton(label: "Secondary Disabled", variant: .secondaryDisabled, isEnabled: false)
        //            }
        //            
        //            HStack {
        //                BrandButton(label: "Secondary Default", variant: .secondaryGreen, leadingIcon: Image(systemName: "square.fill"))
        //                
        //                BrandButton(label: "Secondary Default", variant: .secondaryBlue, leadingIcon: Image(systemName: "square.fill"))
        //                
        //                BrandButton(label: "Secondary Disabled", variant: .secondaryDisabled, leadingIcon: Image(systemName: "square.fill"), isEnabled: false)
        //            }
        //            
        //            HStack {
        //                BrandButton(label: "Secondary Default", variant: .secondaryGreen, trailingIcon: Image(systemName: "square.fill"))
        //                
        //                BrandButton(label: "Secondary Default", variant: .secondaryBlue, trailingIcon: Image(systemName: "square.fill"))
        //                
        //                BrandButton(label: "Secondary Disabled", variant: .secondaryDisabled, trailingIcon: Image(systemName: "square.fill"), isEnabled: false)
        //            }
        //        }
        
        //MARK: fullWidth, regular and medium sized usage set
        //        VStack {
        //            BrandButton(label: "Primary Default", variant: .primaryGreen,fullWidth: true)
        //            
        //            BrandButton(label: "Secondary Default", variant: .secondaryBlue, size: .regular)
        //            
        //            BrandButton(label: "Secondary Default", variant: .primaryDisabled, isEnabled: false, size: .medium)
        //        }
    }
}

#Preview {
    ContentView()
}
