//
//  MyMealsParameters.swift
//  
//
//  Created by didi on 11/10/2023.
//

import MiamIOSFramework

/**
 A class implemening the necessary parameters for the MyMeals Page.
 
 Mandatory Parameters:
 - onNoResultsRedirect: () -> Void: A closure that navigates the user to a different page when the user doesn't have any recipes in their basket. This should usually navigate to the CatalogView
 
 Optional Parameters:
 - viewOptions: ``MyMealsViewOptions`` -> An optional object where you can override the default Miam views for the component.
 
 */
@available(iOS 14, *)
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
