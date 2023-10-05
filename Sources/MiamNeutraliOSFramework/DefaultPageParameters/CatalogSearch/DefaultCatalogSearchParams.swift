//
//  DefaultCatalogSearchParams.swift
//  
//
//  Created by didi on 05/10/2023.
//

import SwiftUI
import MiamIOSFramework

/// This sets the Templates for the PreferencesSearchView Overview
public class DefaultCatalogSearchParams: CatalogSearchViewParameters {
    public var applySearch: () -> Void
    public init(
        applySearch: @escaping () -> Void
    ) {
        self.applySearch = applySearch
    }
}
