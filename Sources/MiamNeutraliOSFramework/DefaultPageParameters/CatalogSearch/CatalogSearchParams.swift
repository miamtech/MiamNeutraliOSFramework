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
public class CatalogSearchParameters: CatalogSearchParametersProtocol {
    public var onApplied: () -> Void
    public var search: TypeSafeSearch
    public var empty: TypeSafeEmpty
    public var background: TypeSafeBackground
    
    public init(
        onApplied: @escaping () -> Void,
        search: TypeSafeSearch = TypeSafeSearch(MiamNeutralGeneralSearch()),
        empty: TypeSafeEmpty = TypeSafeEmpty(DefaultEmptyView()),
        background: TypeSafeBackground = TypeSafeBackground(DefaultBackgroundView())
    ) {
        self.onApplied = onApplied
        self.search = search
        self.empty = empty
        self.background = background
    }
}
