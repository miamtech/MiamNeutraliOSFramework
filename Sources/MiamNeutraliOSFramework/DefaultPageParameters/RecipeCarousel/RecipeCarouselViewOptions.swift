//
//  RecipeCarouselViewOptions.swift
//  
//
//  Created by didi on 16/10/2023.
//

import MiamIOSFramework

@available(iOS 14, *)
public struct RecipeCarouselViewOptions {
    public var recipeCard: TypeSafeCatalogRecipeCard
    public var recipeCardLoading: TypeSafeRecipeCardLoading
    public var background: TypeSafeBackground
    public var empty: TypeSafeEmpty
    public var loading: TypeSafeLoading
    
    public init(
        recipeCard: TypeSafeCatalogRecipeCard = TypeSafeCatalogRecipeCard(MiamNeutralRecipeCard()),
        recipeCardLoading: TypeSafeRecipeCardLoading = TypeSafeRecipeCardLoading(MiamNeutralRecipeCardLoading()),
        empty: TypeSafeEmpty = TypeSafeEmpty(MiamNeutralMyMealsEmpty()),
        loading: TypeSafeLoading = TypeSafeLoading(DefaultLoadingView()),
        background: TypeSafeBackground = TypeSafeBackground(DefaultBackgroundView())
    ) {
        self.recipeCard = recipeCard
        self.recipeCardLoading = recipeCardLoading
        self.background = background
        self.empty = empty
        self.loading = loading
    }
}
