//
//  PreferencesViewParameters.swift
//  
//
//  Created by didi on 29/09/2023.
//

import UIKit
import SwiftUI
import MiamIOSFramework
import miamCore

@available(iOS 14, *)
extension PreferencesViewParameters {
    public var guestSection: MiamNeutralPreferencesGuest {
        return MiamNeutralPreferencesGuest()
    }
    
    public var dietSection: MiamNeutralPreferencesDiet {
        return MiamNeutralPreferencesDiet()
    }
    
    public var ingredientsSection: MiamNeutralPreferencesIngredients {
        return MiamNeutralPreferencesIngredients()
    }
    
    public var equipmentSection: MiamNeutralPreferencesEquipment {
        return MiamNeutralPreferencesEquipment()
    }
    
    public var footer: MiamNeutralPreferencesFooter {
        return MiamNeutralPreferencesFooter()
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
