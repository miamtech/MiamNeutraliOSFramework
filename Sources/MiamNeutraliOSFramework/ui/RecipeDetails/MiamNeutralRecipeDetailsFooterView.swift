//
//  MiamNeutralRecipeDetailsFooterView.swift
//
//
//  Created by didi on 6/19/23.
//

import SwiftUI
import miamCore
import MiamIOSFramework

@available(iOS 14, *)
public struct MiamNeutralRecipeDetailsFooterView: RecipeDetailsFooterProtocol {
    
    public init() {}
    
    let dimension = Dimension.sharedInstance
    public func content(
        recipeId: String,
        guestCount: Int,
        onContinueToBasket: (() -> Void)?
    ) -> some View {
        VStack {
           Divider()
            Button(action: {
                if let onContinueToBasket {
                    onContinueToBasket()
                }
            }, label: {
                Text(Localization.recipe.add.localised)
                    .foregroundColor(Color.miamNeutralColor(.primary))
                    .miamFontStyle(style: MiamFontStyleProvider().bodyStyle)
            })
            Divider()
            PriceViewTemplate(params: MiamNeutralPriceViewTemplate(), recipeId: recipeId, guestNumber: guestCount)
            Text(Localization.price.perGuest.localised)
                .foregroundColor(Color.miamColor(.lightGrey))
                .miamFontStyle(style: MiamFontStyleProvider().bodySmallStyle)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 90)
        .background(Color.white)
    }
}

@available(iOS 14, *)
struct CoursesURecipeDetailsFooterView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.budgetBackgroundColor
            VStack {
                MiamNeutralRecipeDetailsFooterView().content(recipeId: "34134321", guestCount: 4, onContinueToBasket: nil)
                MiamNeutralRecipeDetailsFooterView().content(recipeId: "34134321", guestCount: 4, onContinueToBasket: nil)
                MiamNeutralRecipeDetailsFooterView().content(recipeId: "34134321", guestCount: 4, onContinueToBasket: nil)
            }
        }
        GeometryReader { geometry in
            let safeArea = geometry.safeAreaInsets
            ZStack(alignment: .bottom) {
                ScrollView {
                    VStack {
                        LazyVStack(spacing: 0) {
                            ForEach(1..<11) { index in
                                VStack {
                                    Text("hello world \(index)")
                                    AsyncImage(url: URL(string: "https://picsum.photos/200/300")!) { image in
                                        image
                                            .resizable()
                                            .frame(minWidth: 0, maxWidth: .infinity, maxHeight: .infinity)
                                    }
                                }
                            }
                        }
                        .padding(.bottom, (geometry.safeAreaInsets.bottom + 150)) // Add padding for safe area at bottom
                    }
                }
                StickyFooter(safeArea: safeArea) {
                    MiamNeutralRecipeDetailsFooterView().content(recipeId: "34134321", guestCount: 4, onContinueToBasket: nil)
                }
                .frame(maxWidth: .infinity)
            }
        }
    }
}

