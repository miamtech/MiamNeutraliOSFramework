//
//  MiamMealPlannerBasketPreviewFooter.swift
//  MiamIOSFramework
//
//  Created by Vincent Kergonna on 08/06/2023.
//  Copyright © 2023 Miam. All rights reserved.
//

import SwiftUI
import MiamIOSFramework

@available(iOS 14, *)
public struct MiamNeutralMealPlannerBasketPreviewFooter: MealPlannerBasketPreviewFooter {
    public init() {}
    public func content(actions: BasketPreviewFooterActions) -> some View {
        VStack {
            Button {
                actions.continueShopping()
            } label: {
                Text("Continuer mes achats")
            }
            .padding(Dimension.sharedInstance.lPadding)
            .frame(maxWidth: .infinity)
            .foregroundColor(Color.white)
            .background(Color.miamNeutralColor(.primary))
            .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.bodyBigBoldStyle)
            .cornerRadius(Dimension.sharedInstance.mCornerRadius)

            Button {
                actions.showBasket()
            } label: {
                Text("Voir mon panier")
            }
            .padding(Dimension.sharedInstance.lPadding)
            .frame(maxWidth: .infinity)
            .foregroundColor(Color.miamNeutralColor(.primary))
            .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.bodyBigBoldStyle)
            .overlay(RoundedRectangle(cornerRadius: Dimension.sharedInstance.mCornerRadius)
                .stroke(Color.miamNeutralColor(.primary), lineWidth: 1.0))
        }
        .background(Color.white)
        .padding(Dimension.sharedInstance.lPadding)
    }
}

@available(iOS 14, *)
struct MiamNeutralMealPlannerBasketPreviewFooter_Previews: PreviewProvider {
    static var previews: some View {
        MiamNeutralMealPlannerBasketPreviewFooter().content(actions: .init(continueShopping: {}, showBasket: {}))
    }
}
