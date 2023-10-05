//
//  MyMealsButtonViewParameters.swift
//  
//
//  Created by didi on 03/10/2023.
//

import MiamIOSFramework

public class MiamNeutralMyMealsButtonParams: MyMealsButtonViewParameters{
    public init() {}
}

@available(iOS 14, *)
extension MyMealsButtonViewParameters {
    public var success: MiamNeutralMyMealsSuccessView {
        MiamNeutralMyMealsSuccessView()
    }
    public var empty: DefaultEmptyView {
        DefaultEmptyView()
    }
}
