//
//  MealsInBasketButtonParameters.swift
//  
//
//  Created by didi on 03/10/2023.
//

import MiamIOSFramework

@available(iOS 14, *)
public class MealsInBasketButtonParameters: MealsInBasketButtonParametersProtocol {
    public var success: TypeSafeMealsInBasketButtonSuccess
    public var empty: TypeSafeEmpty
    
    public init(
        success: TypeSafeMealsInBasketButtonSuccess = TypeSafeMealsInBasketButtonSuccess(MiamNeutralMealsInBasketButtonSuccess()),
        empty: TypeSafeEmpty = TypeSafeEmpty(DefaultEmptyView())
    ) {
        self.success = success
        self.empty = empty
    }
}
