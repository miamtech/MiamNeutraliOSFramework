//
//  MiamMealPlannerBasketPreviewLoading.swift
//  MiamIOSFramework
//
//  Created by Vincent Kergonna on 22/06/2023.
//  Copyright © 2023 Miam. All rights reserved.
//

import SwiftUI
import MiamIOSFramework

@available(iOS 14, *)
public struct MiamMealPlannerBasketPreviewLoading: MealPlannerBasketPreviewLoading {
    public init() {}
    public func content() -> some View {
        ProgressLoader(color: Color.miamNeutralColor(.primary))
    }
}
