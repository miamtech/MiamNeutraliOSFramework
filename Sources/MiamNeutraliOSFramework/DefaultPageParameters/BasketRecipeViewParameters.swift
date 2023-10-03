//
//  BasketRecipeViewParameters.swift
//  
//
//  Created by didi on 02/10/2023.
//

import UIKit
import SwiftUI
import MiamIOSFramework

@available(iOS 14, *)
extension BasketRecipeViewParameters {
    public var recipeOverview: MiamNeutralBasketRecipeOverview {
        return MiamNeutralBasketRecipeOverview()
    }
    
    public var recipeOverviewLoading: MiamNeutralRecipeCardLoading {
        return MiamNeutralRecipeCardLoading()
    }
    
    public var basketProduct: MiamNeutralBasketProduct {
        return MiamNeutralBasketProduct()
    }
    
    public var ingredientsAtHome: MiamNeutralOptionalIngredients {
        return MiamNeutralOptionalIngredients()
    }
    
    public var removedIngredients: MiamNeutralOptionalIngredients {
        return MiamNeutralOptionalIngredients()
    }
    
    public var unavaileIngredients: MiamNeutralUnavailableIngredients {
        return MiamNeutralUnavailableIngredients()
    }
}
