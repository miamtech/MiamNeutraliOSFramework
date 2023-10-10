//
//  CatalogPackageRowParams.swift
//  
//
//  Created by didi on 05/10/2023.
//

import SwiftUI
import MiamIOSFramework

@available(iOS 14, *)
/// This sets the Templates for the CatalogRecipesList Overview
public class CatalogPackageRowParameters: CatalogPackageRowParametersProtocol {
    public var onSeeAllRecipes: () -> Void
    public var onRecipeTapped: (String) -> Void
    public var callToAction: TypeSafeCatalogPackageCTA
    public var title: TypeSafeBaseTitle
    public var recipeCard: TypeSafeCatalogRecipeCard
    public var recipeCardLoading: TypeSafeRecipeCardLoading
    
    public init(
        onSeeAllRecipes: @escaping () -> Void,
        onRecipeTapped: @escaping (String) -> Void,
        cta: TypeSafeCatalogPackageCTA = TypeSafeCatalogPackageCTA(MiamNeutralCatalogPackageCTA()),
        title: TypeSafeBaseTitle = TypeSafeBaseTitle(MiamNeutralCatalogPackageTitle()),
        recipeCard: TypeSafeCatalogRecipeCard = TypeSafeCatalogRecipeCard(MiamRecipeCard()),
        recipeCardLoading: TypeSafeRecipeCardLoading = TypeSafeRecipeCardLoading(MiamRecipeCardLoading())
    ) {
        self.onSeeAllRecipes = onSeeAllRecipes
        self.onRecipeTapped = onRecipeTapped
        self.callToAction = cta
        self.title = title
        self.recipeCard = recipeCard
        self.recipeCardLoading = recipeCardLoading
    }
}
