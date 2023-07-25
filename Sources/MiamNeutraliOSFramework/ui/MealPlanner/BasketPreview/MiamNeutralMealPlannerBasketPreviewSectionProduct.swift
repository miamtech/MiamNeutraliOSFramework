//
//  MiamMealPlannerBasketPreviewSectionProduct.swift
//  MiamIOSFramework
//
//  Created by Vincent Kergonna on 20/06/2023.
//  Copyright © 2023 Miam. All rights reserved.
//

import SwiftUI
import MiamIOSFramework

@available(iOS 14, *)
public struct MiamNeutralMealPlannerBasketPreviewSectionProduct: MealPlannerBaskletPreviewSectionProduct {
    public init() {}
    public func content(name: String, canBeAdded: Bool, addIngredientAction: @escaping () -> Void) -> some View {
        HStack {
            Text(name.capitalizingFirstLetter())
                .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.titleMediumStyle)
                .foregroundColor(Color.miamColor(.secondaryText))

            Spacer()
            if canBeAdded {
                Button(action: addIngredientAction) {
                    Image.miamNeutralImage(icon: .plus)
                        .resizable()
                        .aspectRatio( contentMode: .fit)
                        .frame(width: 30, height: 30, alignment: .center)
                        .foregroundColor(Color.miamNeutralColor(.primary))
                    Text(MiamText.sharedInstance.addIngredientText)
                        .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.bodyBigBoldStyle)
                        .foregroundColor(Color.miamNeutralColor(.primary))
                }

            }

        }
        .padding(.horizontal, Dimension.sharedInstance.lPadding)
        .padding(.bottom, Dimension.sharedInstance.lPadding)
    }
}

@available(iOS 14, *)
struct MiamNeutralMealPlannerBasketPreviewSectionProduct_Previews: PreviewProvider {
    static var previews: some View {
        MiamNeutralMealPlannerBasketPreviewSectionProduct().content(name: "Farine de blé", canBeAdded: true,
                                                             addIngredientAction: {})
    }
}
