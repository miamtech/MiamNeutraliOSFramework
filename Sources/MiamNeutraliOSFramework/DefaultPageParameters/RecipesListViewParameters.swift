//
//  RecipesListViewParameters.swift
//  
//
//  Created by didi on 29/09/2023.
//

import UIKit
import SwiftUI
import MiamIOSFramework
import miamCore

@available(iOS 14, *)
extension RecipesListViewParameters {
    public var title: MiamNeutralCatalogPackageTitle {
        return MiamNeutralCatalogPackageTitle()
    }
    
    public var recipeCard: MiamNeutralRecipeCard {
        return MiamNeutralRecipeCard()
    }
    
    public var recipeCardLoading: MiamNeutralRecipeCardLoading {
        return MiamNeutralRecipeCardLoading()
    }
    
    public var noResults: MiamNeutralRecipesListNoResults {
        return MiamNeutralRecipesListNoResults()
    }
    
    public var loading: MiamNeutralGeneralLoading {
        return MiamNeutralGeneralLoading()
    }
    
    public var empty: MiamNeutralCatalogEmpty {
        return MiamNeutralCatalogEmpty()
    }
}
