//
//  BasketRecipeViewOptions.swift
//  
//
//  Created by didi on 18/10/2023.
//

import MiamIOSFramework

/**
 An object containing all the views for the BasketRecipe. If nothing is passed in, the Miam Default will be used
 
 - recipeOverview:  An implementation of ``BasketRecipeOverviewProtocol``
 - recipeOverviewLoading:  An implementation of ``RecipeCardLoadingProtocol``
 - basketProduct:  An implementation of ``BasketProductProtocol``
 - ingredientsAtHome:  An implementation of ``OptionalIngredientsProtocol``
 - removedIngredients: An implementation of ``OptionalIngredientsProtocol``
 - unavailableIngredients: An implementation of ``UnavailableIngredientsProtocol``
 
 */
@available(iOS 14, *)
public struct BasketRecipeViewOptions {
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
