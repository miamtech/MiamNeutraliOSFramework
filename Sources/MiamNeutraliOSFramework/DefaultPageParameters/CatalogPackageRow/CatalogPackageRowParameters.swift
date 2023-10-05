//
//  CatalogPackageRowParameters.swift
//  
//
//  Created by didi on 05/10/2023.
//

import SwiftUI
import MiamIOSFramework
import miamCore

@available(iOS 14, *)
extension CatalogPackageRowParameters {
    public var title: MiamNeutralCatalogPackageTitle {
        return MiamNeutralCatalogPackageTitle()
    }
    
    public var recipeCard: MiamNeutralRecipeCard {
        return MiamNeutralRecipeCard()
    }
    
    public var recipeCardLoading: MiamNeutralRecipeCardLoading {
        return MiamNeutralRecipeCardLoading()
    }
    
    public var callToAction: MiamNeutralCatalogPackageCallToAction {
        return MiamNeutralCatalogPackageCallToAction()
    }
}
