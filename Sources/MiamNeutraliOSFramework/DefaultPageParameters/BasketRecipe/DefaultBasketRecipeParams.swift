//
//  DefaultBasketRecipeParams.swift
//  
//
//  Created by didi on 05/10/2023.
//

import SwiftUI
import MiamIOSFramework

/// This sets the Callbacks for the BasketRecipe Overview
public class DefaultBasketRecipeParams: BasketRecipeViewParameters {
    public var replaceRecipe: () -> Void
    public var showRecipeDetails: (String) -> Void
    public init(
        replaceRecipe: @escaping () -> Void,
        showRecipeDetails: @escaping (String) -> Void
    ) {
        self.replaceRecipe = replaceRecipe
        self.showRecipeDetails = showRecipeDetails
    }
}
