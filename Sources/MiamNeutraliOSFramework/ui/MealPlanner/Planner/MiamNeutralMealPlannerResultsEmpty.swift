//
//  MiamNeutralMealPlannerResultsEmpty.swift
//  MiamIOSFramework
//
//  Created by Vincent Kergonna on 26/04/2023.
//  Copyright © 2023 Miam. All rights reserved.
//

import SwiftUI
import MiamIOSFramework

@available(iOS 14, *)
public struct MiamNeutralMealPlannerResultsEmpty: MealPlannerResultsEmptyProtocol {
    
    public init() {}
    public func content(budgetInfos: BudgetInfos, reason: String) -> some View {
        
        VStack(alignment: .leading, spacing: 8.0) {
            Image.miamNeutralImage(icon: .alert)
                .padding([.top, .leading], 12.0)
            Text(reason)
                .foregroundColor(Color.miamNeutralColor(.textNegative))
                .lineLimit(5)
                .padding([.leading, .trailing, .bottom], 12.0)
        }
        .background(RoundedRectangle(cornerRadius: 6.0).foregroundColor(Color.miamNeutralColor(.errorBackground)))
    }
}
