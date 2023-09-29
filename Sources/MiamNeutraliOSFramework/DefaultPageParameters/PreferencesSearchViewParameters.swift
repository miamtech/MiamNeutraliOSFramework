//
//  PreferencesSearchViewParameters.swift
//  
//
//  Created by didi on 29/09/2023.
//

import UIKit
import SwiftUI
import MiamIOSFramework
import miamCore

@available(iOS 14, *)
extension PreferencesSearchViewParameters {
    public var tagButton: MiamNeutralPreferencesSearchTag {
        return MiamNeutralPreferencesSearchTag()
    }
    
    public var search: MiamNeutralGeneralSearch {
        return MiamNeutralGeneralSearch(hasButton: false)
    }
    
    public var loading: MiamNeutralGeneralLoading {
        return MiamNeutralGeneralLoading()
    }
    
    public var empty: MiamNeutralCatalogEmpty {
        return MiamNeutralCatalogEmpty()
    }
    
    public var background: MiamNeutralGeneralBackground {
        return MiamNeutralGeneralBackground()
    }
}
