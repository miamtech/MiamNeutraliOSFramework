//
//  DefaultPriceViewTemplate.swift
//  
//
//  Created by didi on 03/10/2023.
//

import Foundation
import MiamIOSFramework

@available(iOS 14, *)
public class MiamNeutralPriceViewTemplate: PriceViewParameters {
    var pricePerPerson: Bool
    public init(
        pricePerPerson: Bool = true
    ) {
        self.pricePerPerson = pricePerPerson
    }
    
//    public lazy var priceSuccess = DefaultPriceView(pricePerPerson: pricePerPerson)
}

@available(iOS 14, *)
extension PriceViewParameters {
    public var priceSuccess: MiamNeutralPriceView {
        MiamNeutralPriceView()
    }
    public var loading: DefaultLoadingView {
        DefaultLoadingView(size: 10)
    }
    public var empty: DefaultEmptyView {
        DefaultEmptyView()
    }
}
