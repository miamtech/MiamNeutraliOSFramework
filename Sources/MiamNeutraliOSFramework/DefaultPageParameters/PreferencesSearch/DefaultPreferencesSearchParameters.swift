//
//  DefaultPreferencesSearchParameters.swift
//  
//
//  Created by didi on 05/10/2023.
//

import MiamIOSFramework

/// This sets the Templates for the PreferencesSearchView Overview
public class DefaultPreferencesSearchParameters: PreferencesSearchViewParameters {
    public var closeSearch: () -> Void
    public init(
        closeSearch: @escaping () -> Void
    ) {
        self.closeSearch = closeSearch
    }
}
