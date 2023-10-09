//
//  RecipesListParams.swift
//  
//
//  Created by didi on 05/10/2023.
//

import MiamIOSFramework

@available(iOS 14, *)
/// This sets the Templates for the PreferencesSearchView Overview
public class RecipesListParams: RecipesListParameters {
    public var showRecipes: (MiamIOSFramework.CatalogPackage) -> Void
    public var noResultsRedirect: () -> Void
    public var onRecipeTapped: (String) -> Void
    public var customTitle: TypeSafeBaseTitle
    public var customNoResults: TypeSafeRecipesListNoResults
    public var customRecipeCard: TypeSafeCatalogRecipeCard
    public var customRecipeCardLoading: TypeSafeRecipeCardLoading
    public var customLoading: TypeSafeLoading
    public init(
        showRecipes: @escaping (MiamIOSFramework.CatalogPackage) -> Void,
        noResultsRedirect: @escaping () -> Void,
        onRecipeTapped: @escaping (String) -> Void,
        customNoResults: TypeSafeRecipesListNoResults = TypeSafeRecipesListNoResults(MiamNeutralRecipesListNoResults()),
        customTitle: TypeSafeBaseTitle = TypeSafeBaseTitle(MiamNeutralCatalogPackageTitle()),
        customRecipeCard: TypeSafeCatalogRecipeCard = TypeSafeCatalogRecipeCard(MiamRecipeCard()),
        customRecipeCardLoading: TypeSafeRecipeCardLoading = TypeSafeRecipeCardLoading(MiamRecipeCardLoading()),
        customLoading: TypeSafeLoading = TypeSafeLoading(DefaultLoadingView())
    ) {
        self.showRecipes = showRecipes
        self.noResultsRedirect = noResultsRedirect
        self.onRecipeTapped = onRecipeTapped
        self.customNoResults = customNoResults
        self.customTitle = customTitle
        self.customRecipeCard = customRecipeCard
        self.customRecipeCardLoading = customRecipeCardLoading
        self.customLoading = customLoading
    }
    
    public var noResults: TypeSafeRecipesListNoResults { return self.customNoResults }
    public var title: TypeSafeBaseTitle { return self.customTitle }
    public var recipeCard: TypeSafeCatalogRecipeCard { return self.customRecipeCard }
    public var recipeCardLoading: TypeSafeRecipeCardLoading {
        return self.customRecipeCardLoading
    }
    public var loading: TypeSafeLoading { return self.customLoading }
}
