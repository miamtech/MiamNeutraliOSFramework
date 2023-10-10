//
//  BasketRecipeParameters.swift
//  
//
//  Created by didi on 05/10/2023.
//

import SwiftUI
import MiamIOSFramework

@available(iOS 14, *)
/// This sets the Callbacks for the BasketRecipe Overview
public class BasketRecipeParameters: BasketRecipeParametersProtocol {
    
    public var onReplaceRecipe: () -> Void
    public var onShowRecipeDetails: (String) -> Void
    public var recipeOverview: TypeSafeBasketRecipeOverview
    public var recipeOverviewLoading: TypeSafeRecipeCardLoading
    public var basketProduct: TypeSafeBasketProduct
    public var ingredientsAtHome: TypeSafeOptionalIngredients
    public var removedIngredients: TypeSafeOptionalIngredients
    public var unavailableIngredients: TypeSafeUnavailableIngredients
    
    public init(
        onReplaceRecipe: @escaping () -> Void,
        onShowRecipeDetails: @escaping (String) -> Void,
        viewOptions: BasketRecipeParamsViewOptions = BasketRecipeParamsViewOptions()
    ) {
        self.onReplaceRecipe = onReplaceRecipe
        self.onShowRecipeDetails = onShowRecipeDetails
        self.recipeOverview = viewOptions.recipeOverview
        self.recipeOverviewLoading = viewOptions.recipeOverviewLoading
        self.basketProduct = viewOptions.basketProduct
        self.ingredientsAtHome = viewOptions.ingredientsAtHome
        self.removedIngredients = viewOptions.removedIngredients
        self.unavailableIngredients = viewOptions.unavailableIngredients
    }
}

@available(iOS 14, *)
public struct BasketRecipeParamsViewOptions {
    public var recipeOverview: TypeSafeBasketRecipeOverview
    public var recipeOverviewLoading: TypeSafeRecipeCardLoading
    public var basketProduct: TypeSafeBasketProduct
    public var ingredientsAtHome: TypeSafeOptionalIngredients
    public var removedIngredients: TypeSafeOptionalIngredients
    public var unavailableIngredients: TypeSafeUnavailableIngredients
    
    public init(
        recipeOverview: TypeSafeBasketRecipeOverview = TypeSafeBasketRecipeOverview(MiamNeutralBasketRecipeOverview()),
        recipeOverviewLoading: TypeSafeRecipeCardLoading = TypeSafeRecipeCardLoading(MiamNeutralRecipeCardLoading()),
        basketProduct: TypeSafeBasketProduct = TypeSafeBasketProduct(MiamNeutralBasketProduct()),
        ingredientsAtHome: TypeSafeOptionalIngredients = TypeSafeOptionalIngredients(MiamNeutralOptionalIngredients()),
        removedIngredients: TypeSafeOptionalIngredients = TypeSafeOptionalIngredients(MiamNeutralOptionalIngredients()),
        unavailableIngredients: TypeSafeUnavailableIngredients = TypeSafeUnavailableIngredients(MiamNeutralUnavailableIngredients())
    ) {
        self.recipeOverview = recipeOverview
        self.recipeOverviewLoading = recipeOverviewLoading
        self.basketProduct = basketProduct
        self.ingredientsAtHome = ingredientsAtHome
        self.removedIngredients = removedIngredients
        self.unavailableIngredients = unavailableIngredients
    }
}
