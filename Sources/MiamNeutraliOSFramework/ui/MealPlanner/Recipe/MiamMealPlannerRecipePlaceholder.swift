//
//  MiamBudgetRecipePlaceholder.swift
//  MiamIOSFramework
//
//  Created by Vincent Kergonna on 26/04/2023.
//  Copyright © 2023 Miam. All rights reserved.
//

import SwiftUI
import MiamIOSFramework

@available(iOS 14, *)
public struct MiamMealPlannerRecipePlaceholder: MealPlannerRecipePlaceholder {
    private let recipeCardSize = CGSize(width: 175.0, height: 175.0)
    private let dimension = Dimension.sharedInstance
    public init() {}
    public func content(onTapGesture: @escaping () -> Void) -> some View {
        VStack {
            ZStack {
                VStack {
                    RoundedRectangle(cornerRadius: 0)
                        .stroke(style: StrokeStyle(lineWidth: 1, dash: [4, 6]))
                        .foregroundColor(Color.miamColor(.primary))
                        .frame(height: 1)
                    Spacer()
                    RoundedRectangle(cornerRadius: 0)
                        .stroke(style: StrokeStyle(lineWidth: 1, dash: [4, 6]))
                        .foregroundColor(Color.miamColor(.primary))
                        .frame(height: 1)
                }
                VStack(spacing: dimension.lPadding) {
                    Button {
                        onTapGesture()
                    } label: {
                        RoundedRectangle(cornerRadius: dimension.sCornerRadius)
                            .fill(Color.miamColor(.primary))
                            .frame(width: dimension.xlButtonHeight, height: dimension.xlButtonHeight)
                            .overlay(
                                Image.miamImage(icon: .plus)
                                    .renderingMode(.template)
                                    .foregroundColor(Color.miamColor(.white))
                                    .frame(width: dimension.mButtonHeight, height: dimension.mButtonHeight)
                            )
                    }
                    .buttonStyle(PlainButtonStyle())
                    Text(Localization.myBudget.addMealIdea.localised)
                        .fontWeight(.bold)
                        .foregroundColor(Color.miamColor(.primary))
                }
            }
        }
        .foregroundColor(Color.miamColor(.white))
        .frame(height: recipeCardSize.height)
    }
}

@available(iOS 14, *)
struct MiamBudgetRecipePlaceholderPreview: PreviewProvider {
    static var previews: some View {
        MiamMealPlannerRecipePlaceholder().content {

        }
    }
}
