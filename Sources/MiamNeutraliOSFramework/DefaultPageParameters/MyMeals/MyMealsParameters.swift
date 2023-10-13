//
//  MyMealsParameters.swift
//  
//
//  Created by didi on 11/10/2023.
//

import MiamIOSFramework

@available(iOS 14, *)
/// This sets the Templates for the Favorites Overview
public class MyMealsParameters: MyMealsParametersProtocol {
    
    public var onNoResultsRedirect: () -> Void
  
    public var background: TypeSafeBackground
    public var empty: TypeSafeEmpty
    public var loading: TypeSafeLoading
    
    public init(
        onNoResultsRedirect: @escaping () -> Void,
        viewOptions: MyMealsViewOptions = MyMealsViewOptions()
    ) {
        self.onNoResultsRedirect = onNoResultsRedirect
        self.background = viewOptions.background
        self.empty = viewOptions.empty
        self.loading = viewOptions.loading
    }
}

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

