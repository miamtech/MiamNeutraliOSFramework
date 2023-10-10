//
//  MealPlannerCTAParameters.swift
//  
//
//  Created by didi on 10/10/2023.
//

import SwiftUI
import MiamIOSFramework

@available(iOS 14, *)
/// This sets the Templates for the CatalogFiltersPage Overview
public class MealPlannerCTAParameters: MealPlannerCTAParametersProtocol {
    public var onNavigateToMealPlannerForm: () -> Void
    public var callToAction: TypeSafeMealPlannerCTA
    
    public init(
        onNavigateToMealPlannerForm: @escaping () -> Void,
        viewOptions: MealPlannerCTAViewOptions = MealPlannerCTAViewOptions()
    ) {
        self.onNavigateToMealPlannerForm = onNavigateToMealPlannerForm
        self.callToAction = viewOptions.callToAction
    }
}

@available(iOS 14, *)
public struct MealPlannerCTAViewOptions {
    public var callToAction: TypeSafeMealPlannerCTA
    
    public init(
        callToAction: TypeSafeMealPlannerCTA = TypeSafeMealPlannerCTA(MiamNeutralMealPlannerCallToAction())
    ) {
        self.callToAction = callToAction
    }
}
