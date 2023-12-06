//
//  MiamNeutralMealsInBasketButtonSuccess.swift
//  
//
//  Created by didi on 03/10/2023.
//

import SwiftUI
import MiamIOSFramework
import miamCore

@available(iOS 14, *)
public struct MiamNeutralMealsInBasketButtonSuccess: MealsInBasketButtonSuccessProtocol {
    public init() {}
    public func content(
        mealsCount: Int,
        onNavigateToMyMeals: @escaping () -> Void
    ) -> some View {
        Button {
            onNavigateToMyMeals()
        } label: {
            HStack {
                Image.mealzIcon(icon: .cutlery)
                Spacer()
                Text(Localization.myMeals.mealsAdded(numberOfMeals: Int32(mealsCount)).localised)
                    .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.bodyBigBoldStyle)
                Spacer()
                Image.mealzIcon(icon: .caret)
            }
            .frame(maxWidth: .infinity)
            .padding(Dimension.sharedInstance.lPadding)
        }
        .background(Color.miamColor(.greySurface))
        .foregroundColor(Color.miamColor(.primaryDark))
        .cornerRadius(Dimension.sharedInstance.mCornerRadius, corners: [.top])
    }
}
