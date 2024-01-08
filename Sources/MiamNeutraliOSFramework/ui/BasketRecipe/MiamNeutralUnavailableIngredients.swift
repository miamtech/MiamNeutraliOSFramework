//
//  MiamNeutralUnavailableIngredients.swift
//  
//
//  Created by didi on 02/10/2023.
//

import SwiftUI
import MiamIOSFramework
import miamCore

@available(iOS 14, *)
public struct MiamNeutralUnavailableIngredients: UnavailableIngredientsProtocol {
    public init() {}
    public func content(
        showItems: Binding<Bool>,
        title: String,
        items: [BasketEntry]
    ) -> some View {
        VStack {
            titleButton(title: title) {
                showItems.wrappedValue.toggle()
            }
            if showItems.wrappedValue {
                ForEach(items) { entry in
                    sectionProducts(name: entry.name)
                }
            }
        }
    }
    
    func titleButton(
        title: String,
        toggle: @escaping () -> Void
    ) -> some View {
        return Button(action: {
            toggle()
        }, label: {
            Text(title)
                .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.bodyBigStyle)
        })
        .padding(Dimension.sharedInstance.lPadding)
        .frame(maxWidth: .infinity)
    }
    
    func sectionProducts(name: String) -> some View {
        HStack {
            Text(name.capitalizingFirstLetter())
                .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.titleMediumStyle)
                .foregroundColor(Color.mealzColor(.darkGray))
            Spacer()
        }
        .padding(.horizontal, Dimension.sharedInstance.lPadding)
        .padding(.bottom, Dimension.sharedInstance.lPadding)
    }
}

@available(iOS 14, *)
struct MiamNeutralUnavailableIngredients_Previews: PreviewProvider {
    static var previews: some View {
        MiamNeutralUnavailableIngredients().content(
            showItems: .constant(true),
            title: "Test Items",
            items: [])
    }
}
