//
//  MiamNeutralMyMealsEmpty.swift
//  
//
//  Created by didi on 12/10/2023.
//

import SwiftUI
import MiamIOSFramework

@available(iOS 14, *)
public struct MiamNeutralMyMealsEmpty: EmptyProtocol {
    public init() {}
    
    public func content(onOptionalCallback: (() -> Void)?) -> some View {
        VStack(spacing: Dimension.sharedInstance.lPadding) {
            Image.miamImage(icon: .noResults)
                .resizable()
                .frame(width: 100, height: 100)
            Text(Localization.myMeals.noMealIdeaInBasket.localised)
                .foregroundColor(Color.white)
                .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.titleMediumStyle)
                .multilineTextAlignment(.center)
            if let optionalCallBack = onOptionalCallback {
                Button {
                    withAnimation {
                        optionalCallBack()
                    }
                } label: {
                    Text(Localization.myMeals.goToCatalog.localised)
                        .foregroundColor(Color.miamColor(.primary))
                        .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.bodyStyle)
                }
                .padding(.horizontal)
                .padding(.vertical, 15)
                .background(Color.miamColor(.white))
                .cornerRadius(Dimension.sharedInstance.lCornerRadius)
                .overlay(RoundedRectangle(cornerRadius: Dimension.sharedInstance.lCornerRadius)
                    .stroke(Color.clear, lineWidth: 1.0)
                )
            }
        }
        .padding(Dimension.sharedInstance.lPadding)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.miamColor(.primary))
    }
}

@available(iOS 14, *)
struct MiamNeutralMyMealsEmpty_Previews: PreviewProvider {
    static var previews: some View {
        MiamNeutralMyMealsEmpty().content(onOptionalCallback: {})
    }
}
