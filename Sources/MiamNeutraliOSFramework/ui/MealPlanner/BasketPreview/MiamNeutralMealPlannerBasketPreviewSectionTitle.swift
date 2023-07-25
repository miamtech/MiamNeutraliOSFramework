//
//  MiamMealPlannerBasketPreviewSectionTitle.swift
//  MiamIOSFramework
//
//  Created by Vincent Kergonna on 20/06/2023.
//  Copyright © 2023 Miam. All rights reserved.
//

import SwiftUI
import MiamIOSFramework

@available(iOS 14, *)
public struct MiamNeutralMealPlannerBasketPreviewSectionTitle: MealPlannerBasketPreviewSectionTitle {
    public init() {}
    public func content(title: String, showResults: Binding<Bool>) -> some View {
        Button(action: {
            showResults.wrappedValue.toggle()
        }, label: {
            Text(title)
                .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.bodyBigStyle)
        })
        .padding(Dimension.sharedInstance.lPadding)
        .frame(maxWidth: .infinity)
    }
}

@available(iOS 14, *)
struct MiamNeutralMealPlannerBasketPreviewSectionTitle_Previews: PreviewProvider {
    static var previews: some View {
        MiamNeutralMealPlannerBasketPreviewSectionTitle().content(title: "Produits indisponibles", showResults: .constant(false))
    }
}
