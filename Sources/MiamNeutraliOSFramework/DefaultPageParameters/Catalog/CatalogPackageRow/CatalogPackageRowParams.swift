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
    public var onSeeAllRecipes: (String, String) -> Void
    public var onShowRecipeDetails: (String) -> Void
    public var onRecipeCallToActionTapped: (String) -> Void
    
    public var callToAction: TypeSafeCatalogPackageCTA
    public var title: TypeSafeBaseTitle
    public var recipeCard: TypeSafeCatalogRecipeCard
    public var recipeCardLoading: TypeSafeRecipeCardLoading
    
    public init(
        onSeeAllRecipes: @escaping (String, String) -> Void,
        onShowRecipeDetails: @escaping (String) -> Void,
        onRecipeCallToActionTapped: @escaping (String) -> Void,
        cta: TypeSafeCatalogPackageCTA = TypeSafeCatalogPackageCTA(MiamNeutralCatalogPackageCTA()),
        title: TypeSafeBaseTitle = TypeSafeBaseTitle(MiamNeutralCatalogPackageTitle()),
        recipeCard: TypeSafeCatalogRecipeCard = TypeSafeCatalogRecipeCard(MiamNeutralRecipeCard()),
        recipeCardLoading: TypeSafeRecipeCardLoading = TypeSafeRecipeCardLoading(MiamNeutralRecipeCardLoading())
    ) {
        self.onSeeAllRecipes = onSeeAllRecipes
        self.onShowRecipeDetails = onShowRecipeDetails
        self.onRecipeCallToActionTapped = onRecipeCallToActionTapped
        self.callToAction = cta
        self.title = title
        self.recipeCard = recipeCard
        self.recipeCardLoading = recipeCardLoading
    }
}
