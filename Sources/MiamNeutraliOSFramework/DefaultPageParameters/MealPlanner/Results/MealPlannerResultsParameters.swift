//
//  MealPlannerResultsParameters.swift
//
//
//  Created by didi on 10/10/2023.
//

import SwiftUI
import MiamIOSFramework

/**
 A class implementing the necessary parameters for the Meal Planner Results
 
 Mandatory Parameters:
 - onShowRecipeDetails: (String) -> Void: A closure that opens the RecipeDetails, passing in the recipeId
 - onOpenReplaceRecipe: (Int) -> Void: A closure that opens the MealPlanner RecipePicker Page where users can replace the tapped recipe.
 - onNavigateToBasket: () -> Void: A closure that navigates the user to the Meal Planner Basket Page where they can edit the products in their basket.
 
 Optional Parameters:
 - viewOptions: ``MealPlannerResultsViewOptions`` -> An optional object where you can override the default Miam views for the component.
 
 */
@available(iOS 14, *)
public class MealPlannerResultsParameters: MealPlannerResultsParametersProtocol {
    public var onShowRecipeDetails: (String) -> Void
    public var onOpenReplaceRecipe: (Int) -> Void
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
        onOpenReplaceRecipe: @escaping (Int) -> Void,
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

/**
 An object containing all the views for the Meal Planner Results Page. If nothing is passed in, the Miam Default will be used
 
 - toolbar:  An implementation of ``MealPlannerResultsToolbarProtocol``
 - footer:  An implementation of ``MealPlannerResultsFooterProtocol``
 - recipeCard:  An implementation of ``CatalogRecipeCardProtocol``
 - recipeCardLoading:  An implementation of ``RecipeCardLoadingProtocol``
 - placeholder:  An implementation of ``MealPlannerRecipePlaceholderProtocol``
 - emptyResults:  An implementation of ``MealPlannerResultsEmptyProtocol``
 - loading:  An implementation of ``LoadingProtocol``
 - empty:  An implementation of ``EmptyProtocol``
 - background: An implementation of ``BackgroundProtocol``

 */
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
