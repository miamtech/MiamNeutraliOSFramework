//
//  MiamNeutralMealPlannerRecipePickerEmpty.swift
//  
//
//  Created by didi on 10/10/2023.
//

import MiamIOSFramework
import SwiftUI

@available(iOS 14, *)
public struct MiamNeutralMealPlannerRecipePickerEmpty: EmptyProtocol {
    public func content(optionalCallBack: (() -> Void)?) -> some View {
            VStack {
                Text(Localization.catalog.noRecipeFound.localised)
                    .miamFontStyle(style: MiamFontStyleProvider().titleStyle)
                    .padding(.top, 35)
                Text(Localization.catalog.noRecipeFound.localised)
                    .miamFontStyle(style: MiamFontStyleProvider().subtitleStyle)
                Spacer()
            }
    }
}
