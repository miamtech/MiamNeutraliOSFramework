//
//  MiamMealPlannerBasketPreviewRecipeOverview.swift
//  MiamIOSFramework
//
//  Created by Vincent Kergonna on 08/06/2023.
//  Copyright © 2023 Miam. All rights reserved.
//

import SwiftUI
import miamCore
import MiamIOSFramework

@available(iOS 14, *)
public struct MiamMealPlannerBasketPreviewRecipeOverview: MealPlannerBasketPreviewRecipeOverview {
    public init() {
    }
    public func content(basketPreviewInfos: BasketPreviewInfos,
                        basketPreviewActions: BasketPreviewRecipeActions) -> some View {
        VStack(alignment: .leading) {
            HStack {
                AsyncImage(url: basketPreviewInfos.recipe.pictureURL) { image in
                    image
                        .resizable()
                        .scaledToFit()
                }
                .cornerRadius(8.0)
                .frame(width: 120.0, height: 120.0)

                HStack(alignment: .top) {
                    VStack(alignment: .leading) {
                        Text(basketPreviewInfos.recipe.title)
                            .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.bodyBoldStyle)
                        Text("\(basketPreviewInfos.numberOfProductsInBasket) articles")
                            .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.bodySmallStyle)

//                        HStack {
//                            Text("Recommandé")
//                                .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.bodyStyle)
//                                .padding(Dimension.sharedInstance.mPadding)
//                                .background(Color.miamNeutralColor(.primary))
//                                .cornerRadius(Dimension.sharedInstance.sCornerRadius)
//                                .foregroundColor(Color.white)
//                            Text("Petits prix")
//                                .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.bodyStyle)
//                                .padding(Dimension.sharedInstance.mPadding)
//                                .foregroundColor(Color.miamNeutralColor(.primary))
//                                .overlay(RoundedRectangle(cornerRadius: Dimension.sharedInstance.sCornerRadius)
//                                    .stroke(Color.miamNeutralColor(.primary)))
//                        }
                    }
                    .frame(maxWidth: .infinity)
                    Button {
                        basketPreviewActions.delete()
                    } label: {
                        Image.miamNeutralImage(icon: .bin)
                    }
                }
                .frame(maxWidth: .infinity)
            }
            HStack {
                priceView(price: basketPreviewInfos.price, pricePerPerson: basketPreviewInfos.pricePerPerson)
                Spacer()
//                MiamStepper(value: numberOfGuests)
                .frame(width: 150.0)
                Button {
                    basketPreviewActions.expand()
                } label: {
                    Image.miamNeutralImage(icon: .carret)
                }
                .frame(width: Dimension.sharedInstance.lButtonHeight,
                       height: Dimension.sharedInstance.lButtonHeight)
            }
        }
        .padding(12.0)
    }

    func priceView(price: Price, pricePerPerson: String) -> some View {
        VStack(alignment: .leading) {
            Text(price.formattedPrice())
                .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.titleBigStyle)
                .foregroundColor(Color.miamNeutralColor(.primary))
            Text(pricePerPerson)
                .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.bodySmallStyle)
                .foregroundColor(Color.miamNeutralColor(.lightBorder))
        }
    }
}

//@available(iOS 14, *)
//struct MiamMealPlannerBasketPreviewRecipeOverview_Previews: PreviewProvider {
//    static var previews: some View {
//        let recipeAttributes = RecipeAttributes(title: "Salade grecque sur deux lignes",
//                                                recipeDescription: "Coconut based recipe",
//                                                numberOfGuests: 4,
//                                                preparationTime: 3000000000000,
//                                                cookingTime: 3000000000000,
//                                                restingTime: 3000000000000,
//                                                mediaUrl: "https://hips.hearstapps.com/hmg-prod/images/is-coconut-oil-healthy-1650650710.jpg?crop=0.669xw:1.00xh;0.0637xw,0&resize=1200:*",
//                                                difficulty: 3)
//        let ingredients = [Ingredient(id: "123440", attributes: nil, json_relationships: nil, includedRecords: []),
//                           Ingredient(id: "123440", attributes: nil, json_relationships: nil, includedRecords: []),
//                           Ingredient(id: "123440", attributes: nil, json_relationships: nil, includedRecords: []),
//                           Ingredient(id: "123440", attributes: nil, json_relationships: nil, includedRecords: []),
//                           Ingredient(id: "123440", attributes: nil, json_relationships: nil, includedRecords: []),
//                           Ingredient(id: "123440", attributes: nil, json_relationships: nil, includedRecords: [])]
//        let recipeRelationships = RecipeRelationships(ingredients: IngredientListRelationship(data: ingredients),
//                                                      sponsors: nil, recipeSteps: nil)
//        let recipe = RecipeFakeFactory().create(id: "234",
//                                                attributes: recipeAttributes,
//                                                relationships: recipeRelationships)
//        let basketInfos = BasketPreviewInfos(recipe: recipe, price: Price(price: 14.56, currency: "EUR"))
//        MiamMealPlannerBasketPreviewRecipeOverview().content(basketPreviewInfo: basketInfos,
//                                                             basketPreviewActions: BasketPreviewRecipeActions(delete: {},
//                                                                                                              expand: {},
//                                                                                                              updateGuests: { _ in}))
//    }
//}
