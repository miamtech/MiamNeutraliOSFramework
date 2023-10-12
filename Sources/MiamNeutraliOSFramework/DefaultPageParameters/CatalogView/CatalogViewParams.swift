//
//  CatalogViewParams.swift
//  
//
//  Created by didi on 05/10/2023.
//

import SwiftUI
import MiamIOSFramework
import miamCore

@available(iOS 14, *)
/// This sets the Templates for the CatalogPage Overview
public struct CatalogParameters: CatalogParametersProtocol {
    
    public var onFiltersTapped: (SingletonFilterViewModel) -> Void
    public var onSearchTapped: () -> Void
    public var onFavoritesTapped: () -> Void
    public var onPreferencesTapped: () -> Void
    public var onLaunchMealPlanner: (() -> Void)?
    public var onMealsInBasketButtonTapped: () -> Void
    public var catalogToolbar: TypeSafeCatalogToolbar
    public var resultsToolbar: TypeSafeCatalogToolbar
    public var background: TypeSafeBackground
    public var empty: TypeSafeEmpty
    public var loading: TypeSafeLoading
    public var mealsInBasketButton: MealsInBasketButtonParameters
    
    public init(
        onFiltersTapped: @escaping (SingletonFilterViewModel) -> Void,
        onSearchTapped: @escaping () -> Void,
        onFavoritesTapped: @escaping () -> Void,
        onPreferencesTapped: @escaping () -> Void,
        onLaunchMealPlanner: (() -> Void)? = nil,
        onMealsInBasketButtonTapped: @escaping () -> Void,
        viewOptions: CatalogParamsViewOptions = CatalogParamsViewOptions()
    ) {
        self.onFiltersTapped = onFiltersTapped
        self.onSearchTapped = onSearchTapped
        self.onFavoritesTapped = onFavoritesTapped
        self.onPreferencesTapped = onPreferencesTapped
        self.onLaunchMealPlanner = onLaunchMealPlanner
        self.onMealsInBasketButtonTapped = onMealsInBasketButtonTapped
        self.background = viewOptions.background
        self.empty = viewOptions.empty
        self.loading = viewOptions.loading
        self.catalogToolbar = viewOptions.catalogToolbar
        self.resultsToolbar = viewOptions.resultsToolbar
        self.mealsInBasketButton = viewOptions.mealsInBasketButton
    }
    
    
    // this will be TypeSafe soon
    public var mealPlannerCTA: MiamNeutralMealPlannerCallToAction {
//        if let launchMealPlanner {
            return MiamNeutralMealPlannerCallToAction()
//        } else { return DefaultMealPlannerCTA() }
    }
}

@available(iOS 14, *)
public struct CatalogParamsViewOptions {
    public var catalogToolbar: TypeSafeCatalogToolbar
    public var resultsToolbar: TypeSafeCatalogToolbar
    public var background: TypeSafeBackground
    public var empty: TypeSafeEmpty
    public var loading: TypeSafeLoading
    public var mealsInBasketButton: MealsInBasketButtonParameters
    
    public init(
        catalogToolbar: TypeSafeCatalogToolbar = TypeSafeCatalogToolbar(MiamNeutralCatalogToolbar()),
        resultsToolbar: TypeSafeCatalogToolbar = TypeSafeCatalogToolbar(MiamNeutralCatalogResultsToolbar()),
        empty: TypeSafeEmpty = TypeSafeEmpty(DefaultEmptyView()),
        loading: TypeSafeLoading = TypeSafeLoading(DefaultLoadingView()),
        background: TypeSafeBackground = TypeSafeBackground(DefaultBackgroundView()),
        mealsInBasketButtonSuccess: TypeSafeMealsInBasketButtonSuccess = TypeSafeMealsInBasketButtonSuccess(MiamNeutralMealsInBasketButtonSuccess()),
        mealsInBasketButtonEmpty: TypeSafeEmpty = TypeSafeEmpty(DefaultEmptyView())
    ) {
        self.background = background
        self.empty = empty
        self.loading = loading
        self.catalogToolbar = catalogToolbar
        self.resultsToolbar = resultsToolbar
        self.mealsInBasketButton = MealsInBasketButtonParameters(
            success: mealsInBasketButtonSuccess,
            empty: mealsInBasketButtonEmpty
        )
    }
}
