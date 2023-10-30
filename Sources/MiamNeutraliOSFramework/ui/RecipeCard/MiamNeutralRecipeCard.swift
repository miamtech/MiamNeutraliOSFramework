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
public struct MiamNeutralRecipeCard: CatalogRecipeCardProtocol {
    public init() {}
    public func content(
        recipeCardDimensions: CGSize,
        recipe: Recipe,
        isCurrentlyInBasket: Bool,
        onAddToBasket: @escaping (String) -> Void,
        onShowRecipeDetails: @escaping (String) -> Void
    ) -> some View {
        let dimensions = Dimension.sharedInstance
        let ctaAction: (String) -> Void = isCurrentlyInBasket ? onShowRecipeDetails : onAddToBasket
        let pictureHeight = 150.0
        
        func showTimeAndDifficulty() -> Bool {
            return recipeCardDimensions.height >= 320
        }
        
        func showCTA() -> Bool {
            return recipeCardDimensions.height >= 225
        }
        
        return VStack(spacing: 0.0) {
            VStack(spacing: 0.0) {
                ZStack(alignment: .topTrailing) {
                    AsyncImage(url: recipe.pictureURL) { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .padding(0)
                            .frame(minWidth: 0, maxWidth: recipeCardDimensions.width, maxHeight:
                                    pictureHeight)
                    }.padding(0)
                    LikeButton(
                        likeButtonInfo: LikeButtonInfo(
                            recipeId: recipe.id,
                            backgroundShape: AnyShape(
                                RoundedRectangle(cornerRadius: Dimension.sharedInstance.sCornerRadius)
                            )
                            // there are other parameters you can change to customize
                        ))
                    .padding(dimensions.mPadding)
                }
                .padding(0)
                .frame(height: pictureHeight)
                .clipped()
                VStack(spacing: dimensions.lPadding) {
                    Text(recipe.title)
                        .miamFontStyle(style: MiamFontStyleProvider().bodyMediumBoldStyle)
                        .lineLimit(2)
                        .multilineTextAlignment(.center)
                        .minimumScaleFactor(0.75)
                        .frame(
                            width: recipeCardDimensions.width - (dimensions.mPadding * 2),
                            height: 35
                        )
                    if showTimeAndDifficulty() {
                        HStack(spacing: 0.0) {
                            MiamNeutralRecipeDifficulty(difficulty: recipe.difficulty)
                            Spacer()
                            MiamNeutralRecipePreparationTime(duration: recipe.cookingTimeIos)
                        }
                    }
                    if showCTA() {
                        Button {
                            ctaAction(recipe.id)
                        } label: {
                            Label {
                                if isCurrentlyInBasket {
                                    Text(Localization.recipe.showBasketPreview.localised)
                                        .foregroundColor(Color.miamColor(.white))
                                } else {
                                    Text(Localization.recipe.add.localised)
                                        .foregroundColor(Color.miamColor(.white))
                                }
                            } icon: {
                                Image.miamImage(icon: .plus)
                            }
                            .miamFontStyle(style: MiamFontStyleProvider().bodySmallBoldStyle)
                        }
                        .padding(Dimension.sharedInstance.mPadding)
                        .overlay(RoundedRectangle(cornerRadius: Dimension.sharedInstance.sCornerRadius)
                            .stroke(Color.miamNeutralColor(.primary), lineWidth: 1))
                        .background(Color.miamNeutralColor(.primary))
                    }
                }
                .padding(.horizontal, dimensions.mPadding)
                .padding(.vertical, dimensions.mPadding)
                .frame(maxHeight: .infinity)
            }
        }
        .onTapGesture {
            onShowRecipeDetails(recipe.id)
        }
        .padding(0)
        .frame(width: recipeCardDimensions.width, height: recipeCardDimensions.height)
        .cornerRadius(12.0)
        .overlay(
            RoundedRectangle(
                cornerRadius: 12.0)
            .stroke(Color.miamNeutralColor(.lightBorder)
                    , lineWidth: 1.0))
    }
}

@available(iOS 14, *)
struct MiamNeutralRecipeCard_Previews: PreviewProvider {
    static var previews: some View {
        let recipe = RecipeFakeFactory().create(
            id: RecipeFakeFactory().FAKE_ID,
            attributes: RecipeFakeFactory().createAttributes(
                title: "Parmentier de Poulet",
                 mediaUrl: "https://lh3.googleusercontent.com/tbMNuhJ4KxReIPF_aE0yve0akEHeN6O8hauty_XNUF2agWsmyprACLg0Zw6s8gW-QCS3A0QmplLVqBKiMmGf_Ctw4SdhARvwldZqAtMG"),
            relationships: nil)
        MiamNeutralRecipeCard().content(
            recipeCardDimensions: CGSize(width: 380, height: 100),
            recipe: recipe,
            isCurrentlyInBasket: false,
            onAddToBasket: {_ in },
            onShowRecipeDetails: {_ in}
        )
        .padding(80.0)
    }
}
