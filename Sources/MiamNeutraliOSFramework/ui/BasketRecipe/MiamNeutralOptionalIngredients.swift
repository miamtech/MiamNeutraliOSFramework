//
//  MiamNeutralOptionalIngredients.swift
//  
//
//  Created by didi on 02/10/2023.
//

import SwiftUI
import MiamIOSFramework
import miamCore

@available(iOS 14, *)
public struct MiamNeutralOptionalIngredients: OptionalIngredientsProtocol {
    public init() {}
    public func content(
        showItems: Binding<Bool>,
        title: String,
        items: [BasketEntry],
        onAddToBasket: @escaping (BasketEntry) -> Void
    ) -> some View {
        VStack {
            titleButton(title: title) {
                showItems.wrappedValue.toggle()
            }
            if showItems.wrappedValue {
                ForEach(items) { entry in
                    sectionProducts(name: entry.name) {
                        onAddToBasket(entry)
                    }
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
    
    func sectionProducts(
        name: String,
        addIngredientAction: @escaping () -> Void
    ) -> some View {
        HStack {
            Text(name.capitalizingFirstLetter())
                .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.titleMediumStyle)
                .foregroundColor(Color.mealzColor(.darkGray))
            Spacer()
            Button(action: addIngredientAction) {
                Image.mealzIcon(icon: .plus)
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(Color.mealzColor(.primary))
                Text(Localization.basket.addProduct.localised)
                    .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.bodyBigBoldStyle)
                    .foregroundColor(Color.mealzColor(.primary))
            }
        }
        .padding(.horizontal, Dimension.sharedInstance.lPadding)
        .padding(.bottom, Dimension.sharedInstance.lPadding)
    }
}

@available(iOS 14, *)
struct MiamNeutralOptionalIngredients_Previews: PreviewProvider {
    static var previews: some View {
        MiamNeutralOptionalIngredients().content(
            showItems: .constant(true),
            title: "Test Items",
            items: [],
            onAddToBasket: { _ in })
    }
}
