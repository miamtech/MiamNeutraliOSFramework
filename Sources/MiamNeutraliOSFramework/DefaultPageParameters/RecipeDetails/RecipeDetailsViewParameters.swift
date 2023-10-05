//
//  RecipeDetailsViewParameters.swift
//  
//
//  Created by didi on 05/10/2023.
//

import Foundation
import SwiftUI
import MiamIOSFramework

@available(iOS 14, *)
extension RecipeDetailsViewParameters {
    public var header: MiamNeutralRecipeDetailsHeaderView {
        return MiamNeutralRecipeDetailsHeaderView()
    }
    
    public var ingredients: MiamNeutralRecipeDetailsIngredientsView {
        return MiamNeutralRecipeDetailsIngredientsView()
    }
    
    public var steps: MiamNeutralRecipeDetailsStepsView {
        return MiamNeutralRecipeDetailsStepsView()
    }
    
    public var footer: MiamNeutralRecipeDetailsFooterView {
        return MiamNeutralRecipeDetailsFooterView()
    }
}
