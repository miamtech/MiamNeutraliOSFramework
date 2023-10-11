//
//  MealPlannerFormParameters.swift
//  
//
//  Created by didi on 10/10/2023.
//

import MiamIOSFramework

@available(iOS 14, *)
/// This sets the Templates for the CatalogFiltersPage Overview
public class MealPlannerFormParameters: MealPlannerFormParametersProtocol {
    public var onNavigateToMealPlannerResults: ([String]) -> Void
    
    public var form: TypeSafeMealPlannerForm
    public var background: TypeSafeBackground
    public var empty: TypeSafeEmpty
    public var loading: TypeSafeLoading
    
    public init(
        onNavigateToMealPlannerResults: @escaping ([String]) -> Void,
        viewOptions: MealPlannerFormViewOptions = MealPlannerFormViewOptions()
    ) {
        self.onNavigateToMealPlannerResults = onNavigateToMealPlannerResults
        self.form = viewOptions.form
        self.background = viewOptions.background
        self.empty = viewOptions.empty
        self.loading = viewOptions.loading
    }
}

@available(iOS 14, *)
public struct MealPlannerFormViewOptions {
    public var form: TypeSafeMealPlannerForm
    public var background: TypeSafeBackground
    public var empty: TypeSafeEmpty
    public var loading: TypeSafeLoading
    
    public init(
        form: TypeSafeMealPlannerForm = TypeSafeMealPlannerForm(MiamNeutralMealPlannerForm()),
        empty: TypeSafeEmpty = TypeSafeEmpty(DefaultEmptyView()),
        loading: TypeSafeLoading = TypeSafeLoading(DefaultLoadingView()),
        background: TypeSafeBackground = TypeSafeBackground(DefaultBackgroundView())
    ) {
        self.form = form
        self.background = background
        self.empty = empty
        self.loading = loading
    }
}

