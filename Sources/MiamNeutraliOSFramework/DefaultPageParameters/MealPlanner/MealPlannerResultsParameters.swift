//
//  MealPlannerResultsParameters.swift
//  
//
//  Created by didi on 10/10/2023.
//

import SwiftUI
import MiamIOSFramework
import miamCore

@available(iOS 14, *)
/// This sets the Templates for the CatalogFiltersPage Overview
public class MealPlannerResultsParameters: MealPlannerResultsParametersProtocol {
    public var onShowRecipeDetails: (String) -> Void
    public var onOpenReplaceRecipe: (String) -> Void
    public var onNavigateToBasket: () -> Void
    
    public var toolbar: TypeSafeMealPlannerResultsToolbar
    public var footer: TypeSafeMealPlannerResultsFooter
    public var recipeCard: TypeSafeMealPlannerRecipeCard
    public var recipeCardLoading: TypeSafeRecipeCardLoading
    public var placeholder: TypeSafeMealPlannerRecipePlaceholder
    public var emptyResults: TypeSafeMealPlannerResultsEmpty
    public var background: TypeSafeBackground
    public var empty: TypeSafeEmpty
    public var loading: TypeSafeLoading
    
    public init(
        onShowRecipeDetails: @escaping (String) -> Void,
        onOpenReplaceRecipe: @escaping (String) -> Void,
        onNavigateToBasket: @escaping () -> Void,
        viewOptions: MealPlannerResultsViewOptions = MealPlannerResultsViewOptions()
    ) {
        self.onShowRecipeDetails = onShowRecipeDetails
        self.onOpenReplaceRecipe = onOpenReplaceRecipe
        self.onNavigateToBasket = onNavigateToBasket
        self.toolbar = viewOptions.toolbar
        self.footer = viewOptions.footer
        self.recipeCard = viewOptions.recipeCard
        self.recipeCardLoading = viewOptions.recipeCardLoading
        self.placeholder = viewOptions.placeholder
        self.emptyResults = viewOptions.emptyResults
        self.background = viewOptions.background
        self.empty = viewOptions.empty
        self.loading = viewOptions.loading
    }
}

@available(iOS 14, *)
public struct MealPlannerResultsViewOptions {
    public var toolbar: TypeSafeMealPlannerResultsToolbar
    public var footer: TypeSafeMealPlannerResultsFooter
    public var recipeCard: TypeSafeMealPlannerRecipeCard
    public var recipeCardLoading: TypeSafeRecipeCardLoading
    public var placeholder: TypeSafeMealPlannerRecipePlaceholder
    public var emptyResults: TypeSafeMealPlannerResultsEmpty
    public var background: TypeSafeBackground
    public var empty: TypeSafeEmpty
    public var loading: TypeSafeLoading
    
    public init(
        toolbar: TypeSafeMealPlannerResultsToolbar = TypeSafeMealPlannerResultsToolbar(MiamNeutralMealPlannerResultsToolbar()),
        footer: TypeSafeMealPlannerResultsFooter = TypeSafeMealPlannerResultsFooter(MiamNeutralMealPlannerStickyFooter()),
        recipeCard: TypeSafeMealPlannerRecipeCard = TypeSafeMealPlannerRecipeCard(MiamNeutralMealPlannerRecipeCard()),
        recipeCardLoading: TypeSafeRecipeCardLoading = TypeSafeRecipeCardLoading(MiamNeutralRecipeCardLoading()),
        placeholder: TypeSafeMealPlannerRecipePlaceholder = TypeSafeMealPlannerRecipePlaceholder(MiamNeutralMealPlannerRecipePlaceholder()),
        emptyResults: TypeSafeMealPlannerResultsEmpty = TypeSafeMealPlannerResultsEmpty(MiamNeutralMealPlannerResultsEmpty()),
        empty: TypeSafeEmpty = TypeSafeEmpty(DefaultEmptyView()),
        loading: TypeSafeLoading = TypeSafeLoading(DefaultLoadingView()),
        background: TypeSafeBackground = TypeSafeBackground(DefaultBackgroundView())
    ) {
        self.toolbar = toolbar
        self.footer = footer
        self.recipeCard = recipeCard
        self.recipeCardLoading = recipeCardLoading
        self.placeholder = placeholder
        self.emptyResults = emptyResults
        self.background = background
        self.empty = empty
        self.loading = loading
    }
}
