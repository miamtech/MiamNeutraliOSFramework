//
//  File.swift
//  
//
//  Created by didi on 05/10/2023.
//

import SwiftUI
import MiamIOSFramework

@available(iOS 14, *)
/// This sets the Templates for the Filters Overview
public class FiltersParameters: CatalogFilterViewParameters {
    public var applyFilters: () -> Void
    public var closeFilters: () -> Void
    public init(
        applyFilters: @escaping () -> Void,
        closeFilters: @escaping () -> Void
    ) {
        self.applyFilters = applyFilters
        self.closeFilters = closeFilters
    }
}
