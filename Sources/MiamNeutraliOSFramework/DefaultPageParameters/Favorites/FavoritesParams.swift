//
//  FavoritesParams.swift
//  
//
//  Created by didi on 05/10/2023.
//

import MiamIOSFramework

@available(iOS 14, *)
/// This sets the Templates for the Favorites Overview
public class FavoritesParams: FavoritesViewParameters {
    public var showRecipes: (MiamIOSFramework.CatalogPackage) -> Void
    public var noResultsRedirect: () -> Void
    public var onRecipeTapped: (String) -> Void
    public var customRecipeCard: TypeSafeCatalogRecipeCard
    public var customRecipeCardLoading: TypeSafeRecipeCardLoading
    public init(
        showRecipes: @escaping (MiamIOSFramework.CatalogPackage) -> Void,
        noResultsRedirect: @escaping () -> Void,
        onRecipeTapped: @escaping (String) -> Void,
        customRecipeCard: TypeSafeCatalogRecipeCard = TypeSafeCatalogRecipeCard(MiamRecipeCard()),
        customRecipeCardLoading: TypeSafeRecipeCardLoading = TypeSafeRecipeCardLoading(MiamRecipeCardLoading())
    ) {
        self.showRecipes = showRecipes
        self.noResultsRedirect = noResultsRedirect
        self.onRecipeTapped = onRecipeTapped
        self.customRecipeCard = customRecipeCard
        self.customRecipeCardLoading = customRecipeCardLoading
    }
    
    public var recipeCard: TypeSafeCatalogRecipeCard { return self.customRecipeCard }
    public var recipeCardLoading: TypeSafeRecipeCardLoading {
        return self.customRecipeCardLoading
    }
}
