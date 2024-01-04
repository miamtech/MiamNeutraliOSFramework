//
//  MiamNeutralRecipeDetailsIngredientsView.swift
//
//
//  Created by didi on 7/6/23.
//
import SwiftUI
import MiamIOSFramework
import miamCore

@available(iOS 14.0, *)
public struct MiamNeutralRecipeDetailsIngredientsView: RecipeDetailsIngredientsProtocol {
    
    public init() {}
    
    public func content(
        infos: RecipeDetailsIngredientsParameters,
        onUpdateGuests: @escaping (Int) -> Void
    ) -> some View {
        HStack {
            HStack {
                // TODO: RecipeDetails localize
                Text("\(infos.ingredients.count) ingrédients")
                    .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.titleStyle)
                    .foregroundColor(Color.black)
                Spacer()
            }.padding(.horizontal, Dimension.sharedInstance.lPadding)
        }
        Divider()
            .background(Color.miamColor(.borderLight))
            .padding(.horizontal, Dimension.sharedInstance.lPadding)
        // Ingredients ListView
        VStack {
            VStack {
                ForEach(infos.ingredients, id: \.self) { ingredient in
                    if let attributes = ingredient.attributes {
                        let quantity = quantityForIngredient(
                            ingredient,
                            currentNumberOfGuests: infos.currentGuests,
                            recipeNumberOfGuests: infos.recipeGuests)
                        let formattedQuantity = formatQuantity(
                            quantity: quantity,
                            unit: attributes.unit)
                        MiamNeutralRecipeDetailsIngredientRow(
                            ingredientName: attributes.name ?? "",
                            quantity: formattedQuantity)
                    }
                }
            }
            .padding(.vertical, Dimension.sharedInstance.lPadding)
        }
        .background(Color.miamColor(.greyLighter)).cornerRadius(15.0)
        .padding( .horizontal,Dimension.sharedInstance.lPadding)
    }
    
    func formatQuantity(quantity: Float, unit: String?) -> String {
        return QuantityFormatter.default().readableFloatNumber(value: quantity, unit: unit)
    }
    
    func quantityForIngredient(
        _ ingredient: Ingredient,
        currentNumberOfGuests: Int,
        recipeNumberOfGuests: Int
    ) -> Float {
        guard let quantity = ingredient.attributes?.quantity else {
            return 0.0
        }
        
        let realQuantities = QuantityFormatter.default().realQuantities(
            quantity: quantity,
            currentGuest: Int32(currentNumberOfGuests),
            recipeGuest: Int32(recipeNumberOfGuests)
        )
        return realQuantities
    }
}

@available(iOS 14.0, *)
struct MiamNeutralRecipeDetailsIngredientsView_Previews: PreviewProvider {
    static var previews: some View {
        MiamNeutralRecipeDetailsIngredientsView().content(infos: RecipeDetailsIngredientsParameters(ingredients: [], recipeGuests: 4, currentGuests: 6, guestUpdating: false)) {_ in
        }
    }
}
