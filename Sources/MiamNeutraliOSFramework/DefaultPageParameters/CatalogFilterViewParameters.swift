//
//  CatalogFilterViewParameters.swift
//  
//
//  Created by didi on 29/09/2023.
//

import UIKit
import SwiftUI
import MiamIOSFramework
import miamCore

@available(iOS 14, *)
extension CatalogFilterViewParameters {
    public var header: MiamNeutralCatalogFilterHeader {
        return MiamNeutralCatalogFilterHeader()
    }
    
    public var section: MiamNeutralCatalogFilterSection {
        return MiamNeutralCatalogFilterSection()
    }
    
    public var callToAction: MiamNeutralCatalogFiltersCallToAction {
        return MiamNeutralCatalogFiltersCallToAction()
    }
    
    public var background: MiamNeutralGeneralBackground {
        return MiamNeutralGeneralBackground()
    }
}
