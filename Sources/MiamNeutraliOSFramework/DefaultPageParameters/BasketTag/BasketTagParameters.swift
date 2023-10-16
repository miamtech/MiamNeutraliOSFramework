//
//  BasketTagParameters.swift
//  
//
//  Created by didi on 16/10/2023.
//

import MiamIOSFramework

@available(iOS 14, *)
/// This sets the Templates for the Favorites Overview
public class BasketTagParameters: BasketTagParametersProtocol {
    
    public var onShowRecipeDetails: (String) -> Void
    
    public var title: TypeSafeBaseTitle
    public var background: TypeSafeBackground
    public var empty: TypeSafeEmpty
    public var loading: TypeSafeLoading
    
    public init(
        onShowRecipeDetails: @escaping (String) -> Void,
        viewOptions: BasketTagViewOptions = BasketTagViewOptions()
    ) {
        self.onShowRecipeDetails = onShowRecipeDetails
        self.title = viewOptions.title
        self.background = viewOptions.background
        self.empty = viewOptions.empty
        self.loading = viewOptions.loading
    }
}

