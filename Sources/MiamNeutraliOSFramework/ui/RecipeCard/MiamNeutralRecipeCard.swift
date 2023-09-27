//
//  MiamNeutralRecipeCard.swift
//  MiamIOSFramework
//
//  Created by Vincent Kergonna on 26/05/2023.
//  Copyright © 2023 Miam. All rights reserved.
//

import SwiftUI
import MiamIOSFramework
import miamCore

@available(iOS 14, *)
public struct MiamNeutralRecipeCard: RecipeCard {
    public init() {}
    public func content(
        recipeCardDimensions: CGSize,
        recipeInfos: MiamIOSFramework.RecipeInfos,
        actions: RecipeCardActions
    ) -> some View {
        let dimensions = Dimension.sharedInstance
        let ctaAction: (String) -> Void = recipeInfos.isInBasket ? actions.showDetails : actions.addToBasket
        let pictureHeight = 150.0
        
        VStack(spacing: 0.0) {
            VStack(spacing: 0.0) {
                ZStack(alignment: .topTrailing) {
                    AsyncImage(url: recipeInfos.recipe.pictureURL) { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .padding(0)
                            .frame(minWidth: 0, maxWidth: recipeCardDimensions.width, maxHeight:
                                    pictureHeight)
                    }.padding(0)
                    LikeButtonViewTemplate(
                        likeButtonInfo: LikeButtonInfo(
                            recipeId: recipeInfos.recipe.id
                            // there are other parameters you can change to customize
                        ))
                    .padding(dimensions.lPadding)
                }
                .padding(0)
                .frame(height: pictureHeight)
                .clipped()
                VStack(spacing: dimensions.lPadding) {
                    Text(recipeInfos.recipe.title + "\n")
                        .miamFontStyle(style: MiamFontStyleProvider().bodyMediumBoldStyle)
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                        .minimumScaleFactor(0.9)

                    HStack(spacing: 0.0) {
                        MiamRecipeDifficulty(difficulty: recipeInfos.recipe.difficulty)
                        Spacer()
                        MiamRecipePreparationTime(duration: recipeInfos.recipe.cookingTimeIos)
                    }
                    Button {
                        ctaAction(recipeInfos.recipe.id)
                    } label: {
                        Label {
                            Text("Ajouter")
                        } icon: {
                            Image.miamNeutralImage(icon: .plus)
                        }
                        .miamFontStyle(style: MiamFontStyleProvider().bodyMediumBoldStyle)
                    }
                    .padding([.vertical], 8.0)
                    .padding([.horizontal], 8.0)
                    .overlay(RoundedRectangle(cornerRadius: Dimension.sharedInstance.sCornerRadius)
                        .stroke(Color.miamNeutralColor(.primary), lineWidth: 1))
                }
                .padding([.leading, .trailing], dimensions.lPadding)
                .padding(.vertical, dimensions.mPadding)
                .frame(maxHeight: .infinity)
            }
        }
        .padding(0)
        .frame(width: recipeCardDimensions.width, height: recipeCardDimensions.height)
        .cornerRadius(12.0)
        .overlay(RoundedRectangle(cornerRadius: 12.0).stroke(Color.miamNeutralColor(.lightBorder), lineWidth: 1.0))
    }
}

@available(iOS 14, *)
struct MiamRecipeCard_Previews: PreviewProvider {
    static var previews: some View {
        let recipe = RecipeFakeFactory().create(
            id: RecipeFakeFactory().FAKE_ID,
            attributes: RecipeFakeFactory().createAttributes(title: "Parmentier de Poulet",
            mediaUrl: "https://lh3.googleusercontent.com/tbMNuhJ4KxReIPF_aE0yve0akEHeN6O8hauty_XNUF2agWsmyprACLg0Zw6s8gW-QCS3A0QmplLVqBKiMmGf_Ctw4SdhARvwldZqAtMG"),
             relationships: nil)
        let infos = RecipeInfos(recipe: recipe, price: Price(price: 30.0, currency: "EUR"), isInBasket: true)
        MiamRecipeCard().content(recipeCardDimensions: CGSize(width: 380, height: 100), recipeInfos: infos, actions: RecipeCardActions(addToBasket: {_ in }, showDetails: {_ in}))
            .padding(80.0)
    }
}
