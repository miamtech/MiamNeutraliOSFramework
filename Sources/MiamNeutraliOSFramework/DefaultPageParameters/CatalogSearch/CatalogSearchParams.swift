//
//  CatalogSearchParams.swift
//  
//
//  Created by didi on 05/10/2023.
//

import SwiftUI
import MiamIOSFramework

@available(iOS 14, *)
/// This sets the Templates for the CatalogSearchParams Overview
public class CatalogSearchParams: CatalogSearchViewParameters {
    public var applySearch: () -> Void
    public var customBackground: TypeSafeBackground
    public var customEmpty: TypeSafeEmpty
    public var customSearch: TypeSafeSearch
    public init(
        applySearch: @escaping () -> Void,
        customSearch: TypeSafeSearch = TypeSafeSearch(MiamNeutralGeneralSearch()),
        customEmpty: TypeSafeEmpty = TypeSafeEmpty(DefaultEmptyView()),
        customBackground: TypeSafeBackground = TypeSafeBackground(DefaultBackgroundView())
    ) {
        self.applySearch = applySearch
        self.customSearch = customSearch
        self.customEmpty = customEmpty
        self.customBackground = customBackground
    }
    
    public var search: TypeSafeSearch { return self.customSearch }
    public var empty: TypeSafeEmpty { return self.customEmpty }
    public var background: TypeSafeBackground { return self.customBackground }
}
