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
    public var onItemSelected: () -> Void
    
    public init(
        onItemSelected: @escaping () -> Void,
        selectedProduct: TypeSafeItemSelectorSelectedProduct = TypeSafeItemSelectorSelectedProduct(MiamNeutralItemSelectorSelectedProduct()),
        productOptions : TypeSafeItemSelectorOptionProducts =
            TypeSafeItemSelectorOptionProducts(MiamNeutralItemSelectorOptionProducts())
        
    ){
        self.selectedProduct = selectedProduct
        self.productOptions = productOptions
        self.onItemSelected = onItemSelected
    }
}
