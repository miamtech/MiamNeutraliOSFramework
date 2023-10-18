//
//  MyMealsViewOptions.swift
//  
//
//  Created by didi on 18/10/2023.
//

import MiamIOSFramework

/**
 The optional View parameters for MyMeals. If nothing is passed in, the Miam Default will be used
 
 - loading:  An implementation of ``LoadingProtocol``
 - empty:  An implementation of ``EmptyProtocol``
 - background: An implementation of ``BackgroundProtocol``
 
 */
@available(iOS 14, *)
public struct MyMealsViewOptions {
    public var background: TypeSafeBackground
    public var empty: TypeSafeEmpty
    public var loading: TypeSafeLoading
    
    public init(
        empty: TypeSafeEmpty = TypeSafeEmpty(MiamNeutralMyMealsEmpty()),
        loading: TypeSafeLoading = TypeSafeLoading(DefaultLoadingView()),
        background: TypeSafeBackground = TypeSafeBackground(DefaultBackgroundView())
    ) {
        self.background = background
        self.empty = empty
        self.loading = loading
    }
}
