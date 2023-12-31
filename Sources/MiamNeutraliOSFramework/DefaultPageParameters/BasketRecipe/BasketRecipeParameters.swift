//
//  BasketRecipeParameters.swift
//
//
//  Created by didi on 05/10/2023.
//

import SwiftUI
import MiamIOSFramework

/**
 A class implementing the necessary parameters for the BasketRecipe
 
 Mandatory Parameters:
 - onShowRecipeDetails: (String) -> Void: A closure that opens the RecipeDetails, passing in the recipeId
 - onReplaceProduct: (String) -> Void: A closure that opens the ItemSelector page where a user can replace an ingredient with a different product from a different brand. This will navigate to a standalone page of ItemSelector.
 
 Optional Parameters:
 - viewOptions: ``BasketRecipeViewOptions`` -> An optional object where you can override the default Miam views for the component.
 
 */
@available(iOS 14, *)
/// This sets the Callbacks for the BasketRecipe Overview
public class BasketRecipeParameters: BasketRecipeParametersProtocol {
    
    public var onReplaceProduct: (String) -> Void
    public var onShowRecipeDetails: (String) -> Void
    public var recipeOverview: TypeSafeBasketRecipeOverview
    public var recipeOverviewLoading: TypeSafeRecipeCardLoading
    public var basketProduct: TypeSafeBasketProduct
    public var ingredientsAtHome: TypeSafeOptionalIngredients
    public var removedIngredients: TypeSafeOptionalIngredients
    public var unavailableIngredients: TypeSafeUnavailableIngredients
    
    public init(
        onReplaceProduct: @escaping (String) -> Void,
        onShowRecipeDetails: @escaping (String) -> Void,
        viewOptions: BasketRecipeViewOptions = BasketRecipeViewOptions()
    ) {
        self.onReplaceProduct = onReplaceProduct
        self.onShowRecipeDetails = onShowRecipeDetails
        self.recipeOverview = viewOptions.recipeOverview
        self.recipeOverviewLoading = viewOptions.recipeOverviewLoading
        self.basketProduct = viewOptions.basketProduct
        self.ingredientsAtHome = viewOptions.ingredientsAtHome
        self.removedIngredients = viewOptions.removedIngredients
        self.unavailableIngredients = viewOptions.unavailableIngredients
    }
}
