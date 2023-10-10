//
//  MiamBudgetCTA.swift
//  MiamIOSFramework
//
//  Created by Vincent Kergonna on 26/04/2023.
//  Copyright © 2023 Miam. All rights reserved.
//

import SwiftUI
import miamCore
import MiamIOSFramework

@available(iOS 14, *)
public struct MiamNeutralMealPlannerCallToAction: MealPlannerCTAProtocol {
    public init() {}
    public func content(onTapGesture: @escaping () -> Void) -> some View {
        Button {
            onTapGesture()
        } label: {
            HStack {
                VStack {
                    Text(Localization.myBudget.myBudget.localised)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.titleBigStyle)
                        .foregroundColor(Color.miamColor(.unpureWhite))
                    Spacer()
                        .frame(height: 10)
                    Text(Localization.myBudget.myBudgetSubtext.localised)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.titleMediumStyle)
                        .foregroundColor(Color.miamColor(.unpureWhite))
                }
                Spacer()
                Image.miamImage(icon: .caret)
                    .renderingMode(.template)
                    .foregroundColor(Color.miamColor(.white))
            }
            .padding(.vertical, 30)
            .padding()
        }
        .frame(maxWidth: .infinity, minHeight: 100)
        .background(
            //                    used to only show part of the pic we want (1/2 the quiche)
            GeometryReader { geometry in
                ZStack {
                    Color(.black)
                    Image.miamImage(icon: .budgetBackground)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .opacity(0.60)
                        .frame(width: geometry.size.width, height: geometry.size.height)
                        .offset(y: geometry.size.height / 2.5)
                }
            }
        )
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}
