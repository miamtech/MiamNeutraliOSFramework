//
//  DefaultPriceViewTemplate.swift
//  
//
//  Created by didi on 03/10/2023.
//

import Foundation
import MiamIOSFramework

@available(iOS 14, *)
/// This sets the Templates for the PriceParameters
public struct PriceParameters: PriceParametersProtocol {
    public var priceSuccess: TypeSafePriceSuccess
    public var empty: TypeSafeEmpty
    public var loading: TypeSafeLoading
    
    public init(
        viewOptions: PriceViewOptions = PriceViewOptions()
    ) {
        self.priceSuccess = viewOptions.priceSuccess
        self.empty = viewOptions.empty
        self.loading = viewOptions.loading
    }
}

@available(iOS 14, *)
public struct PriceViewOptions {
    public var priceSuccess: TypeSafePriceSuccess
    public var empty: TypeSafeEmpty
    public var loading: TypeSafeLoading
    
    public init(
        pricePerPerson: Bool = true,
        priceSuccess: (TypeSafePriceSuccess)? = nil,
        empty: TypeSafeEmpty = TypeSafeEmpty(DefaultEmptyView()),
        loading: TypeSafeLoading = TypeSafeLoading(DefaultLoadingView())
    ) {
        self.priceSuccess = priceSuccess ?? TypeSafePriceSuccess(MiamNeutralPriceView(pricePerPerson: pricePerPerson))
        self.empty = empty
        self.loading = loading
    }
}
