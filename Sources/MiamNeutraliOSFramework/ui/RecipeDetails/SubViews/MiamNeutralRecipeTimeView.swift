//
//  MiamNeutralRecipeTimeView.swift
//  
//
//  Created by didi on 13/10/2023.
//

import SwiftUI
import MiamIOSFramework

@available(iOS 14, *)
struct MiamNeutralRecipeTimeView: View {
    let preparationTime: String
    let cookingTime: String
    let restingTime: String
    
    let noPreparationTime = "0s"
    let noCookingTime = "0s"
    let noRestingTime = "0s"
    
    var body: some View {
        VStack(alignment: .leading) {
            if preparationTime != noPreparationTime {
                HStack {
                    Text(Localization.recipe.preparationTime.localised)
                        .miamFontStyle(style: MiamFontStyleProvider().bodyStyle)
                    Text(preparationTime)
                        .miamFontStyle(style: MiamFontStyleProvider().bodyBoldStyle)
                }
            }
            if cookingTime != noCookingTime {
                HStack {
                    Text(Localization.recipe.cookTime.localised)
                        .miamFontStyle(style: MiamFontStyleProvider().bodyStyle)
                    Text(cookingTime)
                        .miamFontStyle(style: MiamFontStyleProvider().bodyBoldStyle)
                }
            }
            if restingTime != noRestingTime {
                HStack {
                    Text(Localization.recipe.restingTime.localised)
                        .miamFontStyle(style: MiamFontStyleProvider().bodyStyle)
                    Text(restingTime)
                        .miamFontStyle(style: MiamFontStyleProvider().bodyBoldStyle)
                }
            }
            Spacer()
        }
    }
}

@available(iOS 14, *)
struct MiamNeutralRecipeTimeView_Previews: PreviewProvider {
    static var previews: some View {
        MiamNeutralRecipeTimeView(
            preparationTime: "10m", cookingTime: "10m", restingTime: "10m"
        )
    }
}
