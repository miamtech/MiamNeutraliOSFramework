//
//  MyMealsViewParameters.swift
//  
//
//  Created by didi on 02/10/2023.
//

import SwiftUI
import MiamIOSFramework

@available(iOS 14, *)
extension MyMealsViewParameters {
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
