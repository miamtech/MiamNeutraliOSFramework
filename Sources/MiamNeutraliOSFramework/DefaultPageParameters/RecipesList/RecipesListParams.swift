//
//  RecipesListParams.swift
//  
//
//  Created by didi on 05/10/2023.
//

import MiamIOSFramework

@available(iOS 14, *)
/// This sets the Templates for the PreferencesSearchView Overview
public class RecipesListParameters: RecipesListParametersProtocol {
    public var onShowRecipes: (MiamIOSFramework.CatalogPackage) -> Void
    public var onNoResultsRedirect: () -> Void
    public var onShowRecipeDetails: (String) -> Void
    
    public var recipeCard: TypeSafeCatalogRecipeCard
    public var recipeCardLoading: TypeSafeRecipeCardLoading
    public var title: TypeSafeBaseTitle
    public var noResults: TypeSafeRecipesListNoResults
    public var loading: TypeSafeLoading
    
    public init(
        onShowRecipes: @escaping (MiamIOSFramework.CatalogPackage) -> Void,
        onNoResultsRedirect: @escaping () -> Void,
        onShowRecipeDetails: @escaping (String) -> Void,
        viewOptions: RecipesListParamsViewOptions = RecipesListParamsViewOptions()
    ) {
        self.onShowRecipes = onShowRecipes
        self.onNoResultsRedirect = onNoResultsRedirect
        self.onShowRecipeDetails = onShowRecipeDetails
        self.recipeCard = viewOptions.recipeCard
        self.recipeCardLoading = viewOptions.recipeCardLoading
        self.title = viewOptions.title
        self.noResults = viewOptions.noResults
        self.loading = viewOptions.loading
    }
}

@available(iOS 14, *)
public struct RecipesListParamsViewOptions {
    public var recipeCard: TypeSafeCatalogRecipeCard
    public var recipeCardLoading: TypeSafeRecipeCardLoading
    public var title: TypeSafeBaseTitle
    public var noResults: TypeSafeRecipesListNoResults
    public var loading: TypeSafeLoading
    
    public init(
        recipeCard: TypeSafeCatalogRecipeCard = TypeSafeCatalogRecipeCard(MiamNeutralRecipeCard()),
        recipeCardLoading: TypeSafeRecipeCardLoading = TypeSafeRecipeCardLoading(MiamNeutralRecipeCardLoading()),
        title: TypeSafeBaseTitle = TypeSafeBaseTitle(MiamNeutralCatalogPackageTitle()),
        noResults: TypeSafeRecipesListNoResults = TypeSafeRecipesListNoResults(MiamNeutralRecipesListNoResults()),
        loading: TypeSafeLoading = TypeSafeLoading(DefaultLoadingView())
    ) {
        self.recipeCard = recipeCard
        self.recipeCardLoading = recipeCardLoading
        self.title = title
        self.noResults = noResults
        self.loading = loading
    }
}
