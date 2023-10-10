//
//  MealPlannerBasketParameters.swift
//  
//
//  Created by didi on 10/10/2023.
//

import SwiftUI
import MiamIOSFramework

@available(iOS 14, *)
/// This sets the Templates for the CatalogFiltersPage Overview
public class MealPlannerBasketParameters: MealPlannerBasketParametersProtocol {
    public var onNavigateToRecap: () -> Void
    public var onNavigateToBasket: () -> Void
    
    public var footer: TypeSafeMealPlannerBasketFooter
    public var background: TypeSafeBackground
    public var empty: TypeSafeEmpty
    public var loading: TypeSafeLoading
    
    public init(
        onNavigateToRecap: @escaping () -> Void,
        onNavigateToBasket: @escaping () -> Void,
        viewOptions: MealPlannerBasketViewOptions = MealPlannerBasketViewOptions()
    ) {
        self.onNavigateToRecap = onNavigateToRecap
        self.onNavigateToBasket = onNavigateToBasket
        self.footer = viewOptions.footer
        self.background = viewOptions.background
        self.empty = viewOptions.empty
        self.loading = viewOptions.loading
    }
}

@available(iOS 14, *)
public struct MealPlannerBasketViewOptions {
    public var footer: TypeSafeMealPlannerBasketFooter
    public var background: TypeSafeBackground
    public var empty: TypeSafeEmpty
    public var loading: TypeSafeLoading
    
    public init(
        footer: TypeSafeMealPlannerBasketFooter = TypeSafeMealPlannerBasketFooter(MiamNeutralMealPlannerBasketPreviewFooter()),
        empty: TypeSafeEmpty = TypeSafeEmpty(DefaultEmptyView()),
        loading: TypeSafeLoading = TypeSafeLoading(DefaultLoadingView()),
        background: TypeSafeBackground = TypeSafeBackground(DefaultBackgroundView())
    ) {
        self.footer = footer
        self.background = background
        self.empty = empty
        self.loading = loading
    }
}
