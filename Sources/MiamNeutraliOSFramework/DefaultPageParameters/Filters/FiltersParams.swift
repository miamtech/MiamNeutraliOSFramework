//
//  FiltersParams.swift
//  
//
//  Created by didi on 05/10/2023.
//

import SwiftUI
import MiamIOSFramework

@available(iOS 14, *)
/// This sets the Templates for the Filters Overview
public class FiltersParams: FiltersParameters {
    public var applyFilters: () -> Void
    public var closeFilters: () -> Void
    public var customHeader: TypeSafeFiltersHeader
    public var customCTA: TypeSafeFiltersCTA
    public var customSection: TypeSafeFiltersSection
    public var customBackground: TypeSafeBackground
   
    public init(
        applyFilters: @escaping () -> Void,
        closeFilters: @escaping () -> Void,
        customHeader: TypeSafeFiltersHeader = TypeSafeFiltersHeader(MiamNeutralFiltersHeader()),
        customCTA: TypeSafeFiltersCTA = TypeSafeFiltersCTA(MiamNeutralFiltersCTA()),
        customSection: TypeSafeFiltersSection = TypeSafeFiltersSection(MiamNeutralFiltersSection()),
        customBackground: TypeSafeBackground = TypeSafeBackground(DefaultBackgroundView())
    ) {
        self.applyFilters = applyFilters
        self.closeFilters = closeFilters
        self.customHeader = customHeader
        self.customCTA = customCTA
        self.customSection = customSection
        self.customBackground = customBackground
    }
    
    public var header: TypeSafeFiltersHeader { return self.customHeader }
    public var callToAction: TypeSafeFiltersCTA { return self.customCTA }
    public var section: TypeSafeFiltersSection { return self.customSection }
    public var background: TypeSafeBackground { return self.customBackground }
}
