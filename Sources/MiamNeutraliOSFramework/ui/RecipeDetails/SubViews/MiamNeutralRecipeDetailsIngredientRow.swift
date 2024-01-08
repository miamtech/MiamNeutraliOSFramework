//
//  MiamNeutralRecipeDetailsIngredientRow.swift
//  
//
//  Created by didi on 13/10/2023.
//

import SwiftUI
import MiamIOSFramework

@available(iOS 14, *)
public struct MiamNeutralRecipeDetailsIngredientRow: View {
    private var ingredientName: String
    private var quantity: String

    public init(ingredientName: String, quantity: String) {
        self.ingredientName = ingredientName.capitalizingFirstLetter()
        self.quantity = quantity
    }

    public var body: some View {
        HStack {
            Text(ingredientName)
                .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.bodyBigStyle)
                .foregroundColor(Color.mealzColor(.darkestGray))
                .padding(Dimension.sharedInstance.mPadding)

            Spacer()

            Text(quantity)
                .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.titleSmallStyle)
                .foregroundColor(Color.mealzColor(.darkestGray))
                .padding(Dimension.sharedInstance.mPadding)
        }
    }
}

@available(iOS 14, *)
struct MiamNeutralRecipeDetailsIngredientRow_Previews: PreviewProvider {
    static var previews: some View {
        MiamNeutralRecipeDetailsIngredientRow(
            ingredientName: "Sausages", quantity: "4"
        )
    }
}
