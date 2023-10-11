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
            VStack {
                Image.miamImage(icon: .greyChevronDown)
                    .rotationEffect(Angle(degrees: 180.0))
                let mealsAdded = Localization.myMeals.mealsAdded(numberOfMeals: Int32(mealsCount)).localised
                Text(mealsAdded)
                    .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.bodyBigBoldStyle)
            }
            .frame(maxWidth: .infinity)
            .padding(EdgeInsets(top: 16.0, leading: 20.0, bottom: 8.0, trailing: 20.0))
        }
        .background(Color.miamColor(.primary))
        .foregroundColor(Color.miamColor(.white))
        .cornerRadius(50, corners: [.top])
    }
}
