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
        Text("\(steps.count) Etapes").bold().padding(.horizontal).frame(maxWidth: .infinity, alignment: .leading).padding(.top)

        VStack(){
            ForEach(steps,id: \.self.id) {step in
                RecipeDetailStep(stepNumber: Int(step.attributes?.stepNumber ?? 0) + 1, stepDescription: step.attributes?.stepDescription ?? "")
            }
        }.frame(maxWidth: .infinity, alignment: .leading)
    }
}


@available(iOS 14, *)
struct RecipeDetailStep : View {
    var stepNumber: Int
    var stepDescription: String
    
    var body: some View {
        HStack{
            Text("\(stepNumber)").foregroundColor(.black).frame(width: 40, height: 40).background(Circle().fill(Color.miamColor(.backgroundSecondary))).padding(.horizontal)
            Text(stepDescription)
                .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.bodyBigStyle)
                .padding(.trailing, 16).frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}
