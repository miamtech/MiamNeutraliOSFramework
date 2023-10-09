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
public struct CatalogViewParams: CatalogViewParameters {
    public var filtersTapped: () -> Void
    public var searchTapped: () -> Void
    public var favoritesTapped: () -> Void
    public var preferencesTapped: () -> Void
    public var launchMealPlanner: (() -> Void)?
    public var myMealsButtonTapped: () -> Void
    public var customBackground: TypeSafeBackground
    public var customEmpty: TypeSafeEmpty
    public var customLoading: TypeSafeLoading
    public var customCatalogToolbar: TypeSafeCatalogToolbar
    public var customResultsToolbar: TypeSafeCatalogToolbar
    public init(
        filtersTapped: @escaping () -> Void,
        searchTapped: @escaping () -> Void,
        favoritesTapped: @escaping () -> Void,
        preferencesTapped: @escaping () -> Void,
        launchMealPlanner: (() -> Void)? = nil,
        myMealsButtonTapped: @escaping () -> Void,
        customCatalogToolbar: TypeSafeCatalogToolbar = TypeSafeCatalogToolbar(MiamNeutralCatalogToolbar()),
        customResultsToolbar: TypeSafeCatalogToolbar = TypeSafeCatalogToolbar(MiamNeutralCatalogResultsToolbar()),
        customBackground: TypeSafeBackground = TypeSafeBackground(DefaultBackgroundView()),
        customEmpty: TypeSafeEmpty = TypeSafeEmpty(DefaultEmptyView()),
        customLoading: TypeSafeLoading = TypeSafeLoading(DefaultLoadingView())
    ) {
        self.filtersTapped = filtersTapped
        self.searchTapped = searchTapped
        self.favoritesTapped = favoritesTapped
        self.preferencesTapped = preferencesTapped
        self.launchMealPlanner = launchMealPlanner
        self.myMealsButtonTapped = myMealsButtonTapped
        self.customBackground = customBackground
        self.customEmpty = customEmpty
        self.customLoading = customLoading
        self.customCatalogToolbar = customCatalogToolbar
        self.customResultsToolbar = customResultsToolbar
    }
    
    
    // this will be TypeSafe soon
    public var mealPlannerCTA: MiamNeutralMealPlannerCallToAction {
//        if let launchMealPlanner {
            return MiamNeutralMealPlannerCallToAction()
//        } else { return DefaultMealPlannerCTA() }
    }
    public var empty: TypeSafeEmpty { return self.customEmpty }
    public var loading: TypeSafeLoading { return self.customLoading }
    public var background: TypeSafeBackground { return self.customBackground }
    public var catalogToolbar: TypeSafeCatalogToolbar { return self.customCatalogToolbar }
    public var resultsToolbar: TypeSafeCatalogToolbar { return self.customResultsToolbar }
    public var myMealsButton: MiamNeutralMyMealsButtonParams {
        return MiamNeutralMyMealsButtonParams()
    }
}
