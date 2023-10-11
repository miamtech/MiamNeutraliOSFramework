//
//  MealPlannerRecapParameters.swift
//  
//
//  Created by didi on 10/10/2023.
//

import MiamIOSFramework

@available(iOS 14, *)
/// This sets the Templates for the CatalogFiltersPage Overview
public class MealPlannerRecapParameters: MealPlannerRecapParametersProtocol {
    public var onNavigateAwayFromMealPlanner: () -> Void
    
    public var success: TypeSafeMealPlannerRecap
    public var background: TypeSafeBackground
    public var empty: TypeSafeEmpty
    public var loading: TypeSafeLoading
    
    public init(
        onNavigateAwayFromMealPlanner: @escaping () -> Void,
        viewOptions: MealPlannerRecapViewOptions = MealPlannerRecapViewOptions()
    ) {
        self.onNavigateAwayFromMealPlanner = onNavigateAwayFromMealPlanner
        self.success = viewOptions.success
        self.background = viewOptions.background
        self.empty = viewOptions.empty
        self.loading = viewOptions.loading
    }
}

@available(iOS 14, *)
public struct MealPlannerRecapViewOptions {
    public var success: TypeSafeMealPlannerRecap
    public var background: TypeSafeBackground
    public var empty: TypeSafeEmpty
    public var loading: TypeSafeLoading
    
    public init(
        success: TypeSafeMealPlannerRecap = TypeSafeMealPlannerRecap(MiamNeutralMealPlannerRecap()),
        empty: TypeSafeEmpty = TypeSafeEmpty(DefaultEmptyView()),
        loading: TypeSafeLoading = TypeSafeLoading(DefaultLoadingView()),
        background: TypeSafeBackground = TypeSafeBackground(DefaultBackgroundView())
    ) {
        self.success = success
        self.background = background
        self.empty = empty
        self.loading = loading
    }
}


