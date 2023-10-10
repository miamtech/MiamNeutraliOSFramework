//
//  CatalogViewParams.swift
//  
//
//  Created by didi on 05/10/2023.
//

import SwiftUI
import MiamIOSFramework

@available(iOS 14, *)
/// This sets the Templates for the CatalogPage Overview
public struct CatalogParameters: CatalogParametersProtocol {
    public var onFiltersTapped: () -> Void
    public var onSearchTapped: () -> Void
    public var onFavoritesTapped: () -> Void
    public var onPreferencesTapped: () -> Void
    public var onLaunchMealPlanner: (() -> Void)?
    public var onMyMealsButtonTapped: () -> Void
    public var catalogToolbar: TypeSafeCatalogToolbar
    public var resultsToolbar: TypeSafeCatalogToolbar
    public var background: TypeSafeBackground
    public var empty: TypeSafeEmpty
    public var loading: TypeSafeLoading
    
    public init(
        onFiltersTapped: @escaping () -> Void,
        onSearchTapped: @escaping () -> Void,
        onFavoritesTapped: @escaping () -> Void,
        onPreferencesTapped: @escaping () -> Void,
        onLaunchMealPlanner: (() -> Void)? = nil,
        onMyMealsButtonTapped: @escaping () -> Void,
        catalogToolbar: TypeSafeCatalogToolbar = TypeSafeCatalogToolbar(MiamNeutralCatalogToolbar()),
        resultsToolbar: TypeSafeCatalogToolbar = TypeSafeCatalogToolbar(MiamNeutralCatalogResultsToolbar()),
        background: TypeSafeBackground = TypeSafeBackground(DefaultBackgroundView()),
        empty: TypeSafeEmpty = TypeSafeEmpty(DefaultEmptyView()),
        loading: TypeSafeLoading = TypeSafeLoading(DefaultLoadingView())
    ) {
        self.onFiltersTapped = onFiltersTapped
        self.onSearchTapped = onSearchTapped
        self.onFavoritesTapped = onFavoritesTapped
        self.onPreferencesTapped = onPreferencesTapped
        self.onLaunchMealPlanner = onLaunchMealPlanner
        self.onMyMealsButtonTapped = onMyMealsButtonTapped
        self.background = background
        self.empty = empty
        self.loading = loading
        self.catalogToolbar = catalogToolbar
        self.resultsToolbar = resultsToolbar
    }
    
    
    // this will be TypeSafe soon
    public var mealPlannerCTA: MiamNeutralMealPlannerCallToAction {
//        if let launchMealPlanner {
            return MiamNeutralMealPlannerCallToAction()
//        } else { return DefaultMealPlannerCTA() }
    }
//    public var empty: TypeSafeEmpty { return self.customEmpty }
//    public var loading: TypeSafeLoading { return self.customLoading }
//    public var background: TypeSafeBackground { return self.customBackground }
//    public var catalogToolbar: TypeSafeCatalogToolbar { return self.customCatalogToolbar }
//    public var resultsToolbar: TypeSafeCatalogToolbar { return self.customResultsToolbar }
    public var myMealsButton: MiamNeutralMyMealsButtonParams {
        return MiamNeutralMyMealsButtonParams()
    }
}
