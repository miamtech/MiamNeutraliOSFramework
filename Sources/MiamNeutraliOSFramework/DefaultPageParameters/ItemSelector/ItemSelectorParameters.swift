//
//  ItemSelectorParameters.swift
//  
//
//  Created by Miam on 04/10/2023.
//

import Foundation
import MiamIOSFramework


@available(iOS 14, *)
/// This sets the Templates for the ItemSelector
public struct ItemSelectorParameters: ItemSelectorParametersProtocol {
    
    public var selectedProduct: TypeSafeItemSelectorSelectedProduct
    public var productOptions: TypeSafeItemSelectorOptionProducts
    public var background: TypeSafeBackground
    public var empty: TypeSafeEmpty
    public var loading: TypeSafeLoading
    public var onItemSelected: () -> Void
    
    public init(
        onItemSelected: @escaping () -> Void,
        viewOptions : ItemSelectorViewOptions
    ){
        self.selectedProduct = viewOptions.selectedProduct
        self.productOptions = viewOptions.productOptions
        self.background = viewOptions.background
        self.empty = viewOptions.empty
        self.loading = viewOptions.loading
        self.onItemSelected = onItemSelected
    }
}

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
