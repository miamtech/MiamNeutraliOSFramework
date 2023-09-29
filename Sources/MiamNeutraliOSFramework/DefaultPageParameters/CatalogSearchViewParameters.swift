//
//  CatalogSearchViewParameters.swift
//  
//
//  Created by didi on 29/09/2023.
//

import UIKit
import SwiftUI
import MiamIOSFramework
import miamCore

@available(iOS 14, *)
extension CatalogSearchViewParameters {
    public var search: MiamNeutralGeneralSearch {
        return MiamNeutralGeneralSearch()
    }
    
    public var background: MiamNeutralGeneralBackground {
        return MiamNeutralGeneralBackground()
    }
}
