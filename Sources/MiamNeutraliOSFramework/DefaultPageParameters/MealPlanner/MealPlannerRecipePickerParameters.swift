//
//  MealPlannerRecipePickerParameters.swift
//  
//
//  Created by didi on 10/10/2023.
//

import SwiftUI
import MiamIOSFramework
import miamCore

@available(iOS 14, *)
/// This sets the Templates for the CatalogFiltersPage Overview
public class MealPlannerRecipePickerParameters: MealPlannerRecipePickerParametersProtocol {
    public var onShowRecipeDetails: (String) -> Void
    public var onSelectRecipeForMealPlanner: (String) -> Void
    public var onOpenFiltersOptions: (SingletonFilterViewModel) -> Void
    
    public var search: TypeSafeSearch
    public var recipeCard: TypeSafeCatalogRecipeCard
    public var recipeCardLoading: TypeSafeRecipeCardLoading
    public var background: TypeSafeBackground
    public var empty: TypeSafeEmpty
    public var loading: TypeSafeLoading
    
    public init(
        onShowRecipeDetails: @escaping (String) -> Void,
        onSelectRecipeForMealPlanner: @escaping (String) -> Void,
        onOpenFiltersOptions: @escaping (SingletonFilterViewModel) -> Void,
        viewOptions: MealPlannerRecipePickerViewOptions = MealPlannerRecipePickerViewOptions()
    ) {
        self.onShowRecipeDetails = onShowRecipeDetails
        self.onSelectRecipeForMealPlanner = onSelectRecipeForMealPlanner
        self.onOpenFiltersOptions = onOpenFiltersOptions
        self.search = viewOptions.search
        self.recipeCard = viewOptions.recipeCard
        self.recipeCardLoading = viewOptions.recipeCardLoading
        self.background = viewOptions.background
        self.empty = viewOptions.empty
        self.loading = viewOptions.loading
    }
}

@available(iOS 14, *)
public struct MealPlannerRecipePickerViewOptions {
    public var search: TypeSafeSearch
    public var recipeCard: TypeSafeCatalogRecipeCard
    public var recipeCardLoading: TypeSafeRecipeCardLoading
    public var background: TypeSafeBackground
    public var empty: TypeSafeEmpty
    public var loading: TypeSafeLoading
    
    public init(
        search: TypeSafeSearch = TypeSafeSearch(MiamNeutralMealPlannerSearch()),
        recipeCard: TypeSafeCatalogRecipeCard = TypeSafeCatalogRecipeCard(MiamNeutralRecipeCard()),
        recipeCardLoading: TypeSafeRecipeCardLoading = TypeSafeRecipeCardLoading(MiamNeutralRecipeCardLoading()),
        empty: TypeSafeEmpty = TypeSafeEmpty(DefaultEmptyView()),
        loading: TypeSafeLoading = TypeSafeLoading(DefaultLoadingView()),
        background: TypeSafeBackground = TypeSafeBackground(DefaultBackgroundView())
    ) {
        self.search = search
        self.recipeCard = recipeCard
        self.recipeCardLoading = recipeCardLoading
        self.background = background
        self.empty = empty
        self.loading = loading
    }
}
