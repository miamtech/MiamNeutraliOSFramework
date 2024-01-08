//
//  MiamNeutralRecipeDetailsStepsView.swift
//
//
//  Created by didi on 7/6/23.
//

import SwiftUI
import MiamIOSFramework
import miamCore

@available(iOS 14, *)
public struct MiamNeutralRecipeDetailsStepsView: RecipeDetailsStepsProtocol {
    
    public init() {}
    
    public func content(
        activeStep: Binding<Int>,
        steps: [RecipeStep]
    ) -> some View {
        HStack {
            Text(Localization.recipe.steps.localised)
                .foregroundColor(Color.black)
                .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.titleStyle)
                .padding(Dimension.sharedInstance.lPadding)
            Spacer()
        }.padding(.top, Dimension.sharedInstance.lPadding)
        // Steps
        Divider()
            .background(Color.miamColor(.lightGreyBackground))
            .padding(.horizontal, Dimension.sharedInstance.lPadding)
        // Steps ListView
        VStack {
            VStack {
                ForEach(Array(steps.enumerated()), id: \.element) { index, step in
                    let isChecked = activeStep.wrappedValue > index
                    MiamNeutralRecipeDetailsStepRow(
                        index: index,
                        step: step,
                        isCheck: isChecked,
                        onToogleCheckbox: {
                            activeStep.wrappedValue = index + 1
                        }
                    )
                }
            }.padding(.vertical, Dimension.sharedInstance.lPadding)
        }.padding( .horizontal, Dimension.sharedInstance.lPadding)
    }
}
