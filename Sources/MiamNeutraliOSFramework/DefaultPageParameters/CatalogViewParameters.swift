//
//  CatalogViewParameters.swift
//  
//
//  Created by didi on 29/09/2023.
//

import UIKit
import SwiftUI
import MiamIOSFramework
import miamCore

@available(iOS 14, *)
extension CatalogViewParameters {
    public var catalogToolbar: MiamNeutralCatalogToolbar {
        return MiamNeutralCatalogToolbar()
    }
    
    public var resultsToolbar: MiamNeutralCatalogResultsToolbar {
        return MiamNeutralCatalogResultsToolbar()
    }
    
    public var mealPlannerCTA: DefaultMealPlannerCTA {
        return DefaultMealPlannerCTA()
    }
    
    public var loading: MiamNeutralGeneralLoading {
        return MiamNeutralGeneralLoading()
    }
    
    public var empty: MiamNeutralGeneralEmpty {
        return MiamNeutralGeneralEmpty()
    }
    
    public var background: MiamNeutralGeneralBackground {
        return MiamNeutralGeneralBackground()
    }
}
