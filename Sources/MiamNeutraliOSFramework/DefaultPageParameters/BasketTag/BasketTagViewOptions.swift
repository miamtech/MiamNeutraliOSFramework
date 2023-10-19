//
//  BasketTagViewOptions.swift
//  
//
//  Created by didi on 16/10/2023.
//

import MiamIOSFramework

@available(iOS 14, *)
public struct BasketTagViewOptions {
    
    public var title: TypeSafeBaseTitle
    public var background: TypeSafeBackground
    public var empty: TypeSafeEmpty
    public var loading: TypeSafeLoading
    
    public init(
        title: TypeSafeBaseTitle =
        TypeSafeBaseTitle(MiamNeutralCatalogPackageTitle()),
        empty: TypeSafeEmpty = TypeSafeEmpty(DefaultEmptyView()),
        loading: TypeSafeLoading = TypeSafeLoading(DefaultLoadingView()),
        background: TypeSafeBackground = TypeSafeBackground(DefaultBackgroundView())
    ) {
        self.title = title
        self.background = background
        self.empty = empty
        self.loading = loading
    }
}
