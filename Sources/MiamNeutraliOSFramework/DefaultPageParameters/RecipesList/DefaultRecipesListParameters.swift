//
//  DefaultRecipesListParameters.swift
//  
//
//  Created by didi on 05/10/2023.
//

import MiamIOSFramework

/// This sets the Templates for the PreferencesSearchView Overview
public class DefaultRecipesListParameters: RecipesListViewParameters {
    public var showRecipes: (MiamIOSFramework.CatalogPackage) -> Void
    public var noResultsRedirect: () -> Void
    public var onRecipeTapped: (String) -> Void
    public init(
        showRecipes: @escaping (MiamIOSFramework.CatalogPackage) -> Void,
        noResultsRedirect: @escaping () -> Void,
        onRecipeTapped: @escaping (String) -> Void
    ) {
        self.showRecipes = showRecipes
        self.noResultsRedirect = noResultsRedirect
        self.onRecipeTapped = onRecipeTapped
    }
}
