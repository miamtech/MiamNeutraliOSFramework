//
//  MiamMealPlannerBasketPreviewProduct.swift
//  MiamIOSFramework
//
//  Created by Vincent Kergonna on 16/06/2023.
//  Copyright © 2023 Miam. All rights reserved.
//

import Foundation
import SwiftUI
import MiamIOSFramework

@available(iOS 14, *)
public struct MiamNeutralMealPlannerBasketPreviewProduct: MealPlannerBasketPreviewProduct {
    public init() {}
    public func content(quantity: Binding<Int>, productInfo: MealPlannerBasketPreviewProductInfos,
                 actions: MealPlannerBudgetPreviewProductActions) -> some View {
        VStack(alignment: .leading) {
            HStack(spacing: Dimension.sharedInstance.lPadding) {
                AsyncImage(url: productInfo.pictureURL) { image in
                    image
                        .resizable()

                }
                .frame(width: 96, height: 96)

                HStack(alignment: .top) {
                    VStack(alignment: .leading, spacing: Dimension.sharedInstance.sPadding) {
                        Text(productInfo.name)
                            .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.bodyStyle)
                        Text(productInfo.description)
                            .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.bodyStyle)
                            // TODO: add line with quantity?
                    }
                    Spacer()
                    Button {
                        actions.delete()
                    } label: {
                        Image.miamNeutralImage(icon: .bin)
                    }
                    .padding(Dimension.sharedInstance.mlPadding)
                }
                .frame(maxWidth: .infinity)
            }
            .frame(maxWidth: .infinity)

            HStack {
                VStack {
                    Text(productInfo.price.formattedPrice())
                        .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.bodyBigBoldStyle)
                        .foregroundColor(Color.miamNeutralColor(.primary))
                    Text(formatPricePerUnit(pricePerUnit: productInfo.pricePerUnit.price, unit: Localization.price.currency.localised))
                        .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.bodySmallStyle)
                }
                Spacer()

                HStack(spacing: 12.0) {
                    if productInfo.isSubstitutable {
                        Button {
                            actions.changeProduct()
                        } label: {
                            HStack {
                                Image.miamNeutralImage(icon: .refresh)
                                Text("Remplacer")
                                    .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.bodyMediumBoldStyle)
                                    .foregroundColor(Color.miamNeutralColor(.primary))
                            }
                        }
                    }

                    MiamNeutralStepper(value: quantity)
                        .frame(width: 140.0)
                }
            }
            .frame(maxWidth: .infinity)
        }
    }

    func formatPricePerUnit(pricePerUnit: Double, unit: String) -> String {
        return "\(pricePerUnit) / \(unit)"
    }
}

@available(iOS 14, *)
struct MiamNeutralPlannerBasketPreviewProduct_Previews: PreviewProvider {
    static var previews: some View {
        PreviewWrapper()
            .padding()
    }

    struct PreviewWrapper: View {
        @State var quantity = 2

        var body: some View {
            let infos = MealPlannerBasketPreviewProductInfos(price: Price(price: 2.99, currency: "EUR"),
                                                             name: "Ail",
                                                             description: "Ail blanc de transylvanie",
                                                             pictureURL: URL(string: "https://www.mon-herboristerie.com/blog_uploads/2023/01/SP-Ail-bienfaits-1024x783.jpg")!,
                                                             sharedRecipeCount: 2,
                                                             isSubstitutable: true,
                                                             pricePerUnit: Price(price: 23.4, currency: "EUR"), isLoading: false)
            let actions = MealPlannerBudgetPreviewProductActions(delete: {}, changeProduct: {}, updateGuests: { _ in })

            MiamMealPlannerBasketPreviewProduct().content(quantity: $quantity,
                                                          productInfo: infos,
                                                          actions: actions)
        }
    }
}
