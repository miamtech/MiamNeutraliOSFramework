//
//  DefaultBasketRecipeParams.swift
//  
//
//  Created by didi on 05/10/2023.
//

import SwiftUI
import MiamIOSFramework

@available(iOS 14, *)
/// This sets the Callbacks for the BasketRecipe Overview
public class DefaultBasketRecipeParams: BasketRecipeViewParameters {
    public var replaceRecipe: () -> Void
    public var showRecipeDetails: (String) -> Void
    public var customRecipeCardLoading: TypeSafeRecipeCardLoading
    public init(
        replaceRecipe: @escaping () -> Void,
        showRecipeDetails: @escaping (String) -> Void,
        customRecipeCardLoading: TypeSafeRecipeCardLoading = TypeSafeRecipeCardLoading(MiamRecipeCardLoading())
    ) {
        self.replaceRecipe = replaceRecipe
        self.showRecipeDetails = showRecipeDetails
        self.customRecipeCardLoading = customRecipeCardLoading
    }
    
    public var recipeCardLoading: TypeSafeRecipeCardLoading {
        return self.customRecipeCardLoading
    }
}
