//
//  ItemSelectorViewOptions.swift
//  
//
//  Created by didi on 16/10/2023.
//

import MiamIOSFramework

@available(iOS 14, *)
public struct ItemSelectorViewOptions {
    
    public var selectedProduct: TypeSafeItemSelectorSelectedProduct
    public var productOptions: TypeSafeItemSelectorOptionProducts
    public var background: TypeSafeBackground
    public var empty: TypeSafeEmpty
    public var loading: TypeSafeLoading
    
    public init(
        selectedProduct: TypeSafeItemSelectorSelectedProduct = TypeSafeItemSelectorSelectedProduct(MiamNeutralItemSelectorSelectedProduct()),
        productOptions : TypeSafeItemSelectorOptionProducts =
            TypeSafeItemSelectorOptionProducts(MiamNeutralItemSelectorOptionProducts()),
        empty: TypeSafeEmpty = TypeSafeEmpty(DefaultEmptyView()),
        loading: TypeSafeLoading = TypeSafeLoading(DefaultLoadingView()),
        background: TypeSafeBackground = TypeSafeBackground(DefaultBackgroundView())
    ) {
        self.selectedProduct = selectedProduct
        self.productOptions = productOptions
        self.background = background
        self.empty = empty
        self.loading = loading
    }
}
