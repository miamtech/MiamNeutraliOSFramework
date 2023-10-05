//
//  DefaultCatalogViewParams.swift
//  
//
//  Created by didi on 05/10/2023.
//

import SwiftUI
import MiamIOSFramework

/// This sets the Templates for the CatalogPage Overview
public struct DefaultCatalogViewParams: CatalogViewParameters {
    public var filtersTapped: () -> Void
    public var searchTapped: () -> Void
    public var favoritesTapped: () -> Void
    public var preferencesTapped: () -> Void
    public var launchMealPlanner: (() -> Void)? = nil
    public var myMealsButtonTapped: () -> Void
    public init(
        filtersTapped: @escaping () -> Void,
        searchTapped: @escaping () -> Void,
        favoritesTapped: @escaping () -> Void,
        preferencesTapped: @escaping () -> Void,
        myMealsButtonTapped: @escaping () -> Void
    ) {
        self.filtersTapped = filtersTapped
        self.searchTapped = searchTapped
        self.favoritesTapped = favoritesTapped
        self.preferencesTapped = preferencesTapped
        self.myMealsButtonTapped = myMealsButtonTapped
    }
}

@available(iOS 14, *)
/// This sets the Templates for the CatalogPage Overview WITH the meal Planner
public struct DefaultCatalogViewParamsWithMealPlanner: CatalogViewParameters {
    public var filtersTapped: () -> Void
    public var searchTapped: () -> Void
    public var favoritesTapped: () -> Void
    public var preferencesTapped: () -> Void
    public var launchMealPlanner: (() -> Void)?
    public var myMealsButtonTapped: () -> Void
    public init(
        filtersTapped: @escaping () -> Void,
        searchTapped: @escaping () -> Void,
        favoritesTapped: @escaping () -> Void,
        preferencesTapped: @escaping () -> Void,
        launchMealPlanner: (() -> Void)? = nil,
        myMealsButtonTapped: @escaping () -> Void
    ) {
        self.filtersTapped = filtersTapped
        self.searchTapped = searchTapped
        self.favoritesTapped = favoritesTapped
        self.preferencesTapped = preferencesTapped
        self.launchMealPlanner = launchMealPlanner
        self.myMealsButtonTapped = myMealsButtonTapped
    }
    
    public var mealPlannerCTA: MiamNeutralMealPlannerCallToAction {
        return MiamNeutralMealPlannerCallToAction()
    }
}
