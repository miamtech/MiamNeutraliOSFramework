//
//  MiamNeutralPriceView.swift
//  
//
//  Created by didi on 03/10/2023.
//

import MiamIOSFramework
import SwiftUI

@available(iOS 14, *)
public struct MiamNeutralPriceView: PriceSuccessViewTemplate {
    private let pricePerPerson: Bool
    public init(
        pricePerPerson: Bool = true
    ) {
        self.pricePerPerson = pricePerPerson
    }
    public func content(
        price: Double,
        guests: Int,
        currency: String
    ) -> some View {
        
        func priceText() -> String {
            if pricePerPerson { return price.pricePerPerson(numberOfGuests: guests) }
            else { return price.currencyFormatted }
        }
        
        return Text(priceText())
                .foregroundColor(Color.miamNeutralColor(.primary))
                .miamFontStyle(style: MiamFontStyleProvider().titleStyle)
    }
}

@available(iOS 14, *)
struct MiamNeutralPriceView_Previews: PreviewProvider {
    static var previews: some View {
        MiamNeutralPriceView().content(
            price: 34.2,
            guests: 4,
            currency: "EUR"
        )
    }
}
