//
//  MiamNeutralMyMealRecipeCard.swift
//
//
//  Created by miam x didi on 04/01/2024.
//

import Foundation
import SwiftUI
import MiamIOSFramework
import miamCore

@available(iOS 14, *)
public struct MiamNeutralMyMealRecipeCard: MyMealRecipeCardProtocol {
    public init() {}
    public func content(
        recipeCardDimensions: CGSize,
        recipe: Recipe,
        price: Double,
        numberOfProductsInRecipe: Int,
        onDeleteRecipe: @escaping () -> Void,
        onShowRecipeDetails: @escaping (String) -> Void
    ) -> some View {
        let dimensions = Dimension.sharedInstance
        let pictureSize = recipeCardDimensions.height - (Dimension.sharedInstance.lPadding * 2)
        
        func showTimeAndDifficulty() -> Bool {
            return recipeCardDimensions.height >= 320
        }
        
        func showCTA() -> Bool {
            return recipeCardDimensions.height >= 225
        }
        
        return VStack(alignment: .leading, spacing: 0) {
            HStack {
                AsyncImage(url: recipe.pictureURL) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: pictureSize, height: pictureSize)
                        .cornerRadius(Dimension.sharedInstance.mCornerRadius)
                }
                .frame(width: pictureSize, height: pictureSize)
                .clipped()
                Spacer()
                    .frame(width: Dimension.sharedInstance.mPadding)
                VStack(alignment: .leading, spacing: dimensions.lPadding) {
                    HStack {
                        Text(recipe.title)
                            .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.titleStyle)
                            .lineLimit(2)
                            .minimumScaleFactor(0.75)
                        Spacer()
                        Button {
                            onDeleteRecipe()
                        } label: {
                            Image.mealzIcon(icon: .trash)
                                .renderingMode(.template)
                                .frame(width: 18, height: 18)
                                .foregroundColor(Color.miamColor(.grey))
                        }
                    }
                    // i localized in Android PR so i'll localize when that is merged
                    Text("\(numberOfProductsInRecipe) articles")
                        .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.bodyMediumBoldStyle)
                    if let attributes = recipe.attributes {
                        PricePerPersonView(price: price, numberOfGuests: Int(attributes.numberOfGuests))
                    }
                }
                .frame(maxWidth: .infinity)
            }
            .padding(Dimension.sharedInstance.mPadding)
        }
        .onTapGesture {
            onShowRecipeDetails(recipe.id)
        }
        .padding(Dimension.sharedInstance.mPadding)
        .frame(height: recipeCardDimensions.height)
        .frame(maxWidth: .infinity)
        .cornerRadius(Dimension.sharedInstance.mCornerRadius)
        .overlay(
            RoundedRectangle(cornerRadius: 12.0)
                .stroke(Color.miamNeutralColor(.lightBorder), lineWidth: 1.0)
        )
        .padding(.horizontal, Dimension.sharedInstance.lPadding)
    }
    
    struct PricePerPersonView: View {
        var price: Double
        var numberOfGuests: Int

        private var pricePerPerson: Double {
            numberOfGuests != 0 ? price / Double(numberOfGuests) : 0.0
        }

        private var formattedPrice: String {
            String(format: "%.2f", pricePerPerson)
        }

        var body: some View {
            HStack(alignment: .center, spacing: 2) {
                Text(formattedPrice)
                    .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.titleStyle)
                    .foregroundColor(Color.miamColor(.primary))
                    .multilineTextAlignment(.leading)
                Text("per Person") // i localized in Android PR so i'll localize when that is merged
                    .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.bodyMediumBoldStyle)
                    .foregroundColor(Color.miamColor(.grey))
            }
        }
    }
}

@available(iOS 14, *)
#Preview {
    MiamNeutralMyMealRecipeCard().content(
        recipeCardDimensions: CGSize(width: 400, height: 200),
        recipe: FakeRecipe().createRandomFakeRecipe(), 
        price: 34.2,
        numberOfProductsInRecipe: 2,
        onDeleteRecipe: {},
        onShowRecipeDetails: { _ in }
    )
}
