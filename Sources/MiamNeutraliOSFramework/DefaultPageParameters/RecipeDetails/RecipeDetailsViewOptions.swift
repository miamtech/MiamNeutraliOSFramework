//
//  RecipeDetailsViewOptions.swift
//  
//
//  Created by didi on 18/10/2023.
//

import MiamIOSFramework
import SwiftUI

/**
 A protocol defining the necessary parameters for RecipeDetails
 
 - header:  An implementation of ``RecipeDetailsHeaderProtocol``. The content of the header in the recipe details.
 - sponsor:  An implementation of ``RecipeDetailsSponsorProtocol``. The content of the sponsor button in the recipe details.
 - ingredients:  An implementation of ``RecipeDetailsIngredientsProtocol``. The content of the ingredients list in the recipe details.
 - steps:  An implementation of ``RecipeDetailsStepsProtocol``. The content of the steps in the recipe details.
 - footer:  An implementation of ``RecipeDetailsFooterProtocol``. TThe content of the footer in the recipe details.
 - loading:  An implementation of ``LoadingProtocol``
 - empty:  An implementation of ``EmptyProtocol``
 - background: An implementation of ``BackgroundProtocol```
 
 */
@available(iOS 14, *)
public struct RecipeDetailsViewOptions {
    public var header: TypeSafeRecipeDetailsHeader
    public var sponsor: TypeSafeRecipeDetailsSponsor
    public var ingredients: TypeSafeRecipeDetailsIngredients
    public var selectedControl: TypeSafeRecipeDetailsSelectedControl
    public var products: TypeSafeRecipeDetailsProducts
    public var steps: TypeSafeRecipeDetailsSteps
    public var tags: TypeSafeRecipeDetailsTags
    public var footer: TypeSafeRecipeDetailsFooter
    public var background: TypeSafeBackground
    public var empty: TypeSafeEmpty
    public var loading: TypeSafeLoading
    
    public init(
        header: TypeSafeRecipeDetailsHeader = TypeSafeRecipeDetailsHeader(MiamNeutralRecipeDetailsHeaderView()),
        sponsor: TypeSafeRecipeDetailsSponsor = TypeSafeRecipeDetailsSponsor(MiamNeutralRecipeDetailsSponsor()),
        ingredients: TypeSafeRecipeDetailsIngredients = TypeSafeRecipeDetailsIngredients(MiamNeutralRecipeDetailsIngredientsView()),
        selectedControl : TypeSafeRecipeDetailsSelectedControl = TypeSafeRecipeDetailsSelectedControl(MiamNeutralRecipeDetailsSelectedControlView()),
        products: TypeSafeRecipeDetailsProducts = TypeSafeRecipeDetailsProducts(MiamNeutralRecipeDetailsProductsView()),
        steps: TypeSafeRecipeDetailsSteps = TypeSafeRecipeDetailsSteps(MiamNeutralRecipeDetailsStepsView()),
        tags: TypeSafeRecipeDetailsTags = TypeSafeRecipeDetailsTags(MiamNeutralRecipeDetailsTagsView()),
        footer: TypeSafeRecipeDetailsFooter = TypeSafeRecipeDetailsFooter(MiamNeutralRecipeDetailsFooterView()),
        empty: TypeSafeEmpty = TypeSafeEmpty(DefaultEmptyView()),
        loading: TypeSafeLoading = TypeSafeLoading(DefaultLoadingView()),
        background: TypeSafeBackground = TypeSafeBackground(DefaultBackgroundView())
    ) {
        self.header = header
        self.sponsor = sponsor
        self.ingredients = ingredients
        self.selectedControl = selectedControl
        self.products = products
        self.steps = steps
        self.tags = tags
        self.footer = footer
        self.background = background
        self.empty = empty
        self.loading = loading
    }
}

