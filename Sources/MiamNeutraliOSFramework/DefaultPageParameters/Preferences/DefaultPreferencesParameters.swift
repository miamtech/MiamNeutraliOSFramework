//
//  DefaultPreferencesParameters.swift
//  
//
//  Created by didi on 05/10/2023.
//

import MiamIOSFramework

/// This sets the Templates for the CatalogFiltersPage Overview
public class DefaultPreferencesParameters: PreferencesViewParameters {
    public var closePreferences: () -> Void
    public var goToSearchView: () -> Void
    public init(
        closePreferences: @escaping () -> Void,
        goToSearchView: @escaping () -> Void
    ) {
        self.closePreferences = closePreferences
        self.goToSearchView = goToSearchView
    }
}
