//
//  MiamBudgetPlannerToolbar.swift
//  MiamIOSFramework
//
//  Created by Vincent Kergonna on 26/04/2023.
//  Copyright © 2023 Miam. All rights reserved.
//

import SwiftUI
import MiamIOSFramework

@available(iOS 14, *)
public struct MiamBudgetPlannerToolbar: MealPlannerToolbar {
    @State var budget = 23.0
    @State var numberGuests = 4
    @State var numberMeals = 4
    let dimension = Dimension.sharedInstance
    public init() {}
    public func content(budgetInfos: Binding<BudgetInfos>,
                        isLoadingRecipes: Binding<Bool>,
                        onValidateTapped: @escaping (BudgetInfos) -> Void) -> some View {
        HStack {
            MiamNeutralMealPlannerBudget(
                budget: budgetInfos.moneyBudget,
                currency: Localization.price.currency.localised)
            MiamNeutralStepperCollapsed(
                value: budgetInfos.numberOfGuests,
                icon: Image.miamNeutralImage(icon: .guests))
            MiamNeutralStepperCollapsed(
                value: budgetInfos.numberOfMeals,
                icon: Image.miamNeutralImage(icon: .fork))
            SubmitButtonCollapsed(isLoading: isLoadingRecipes) {
                let infos = BudgetInfos(moneyBudget: budget, numberOfGuests: numberGuests, numberOfMeals: numberMeals)
                onValidateTapped(infos)
            }
        }
    }
}

@available (iOS 14, *)
internal struct SubmitButtonCollapsed: View {
    @Binding var isLoading: Bool
    let buttonAction: () -> Void
    let dimension = Dimension.sharedInstance
    var body: some View {
        Button {
            withAnimation {
                isLoading.toggle()
                buttonAction()
            }
        } label: {
            if isLoading {
                ProgressLoader(color: .white)
                    .scaleEffect(0.5)
            } else {
                Image.miamNeutralImage(icon: .check)
                    .renderingMode(.template)
                    .resizable()
                    .foregroundColor(Color.miamColor(.white))
                    .frame(width: dimension.lButtonHeight, height: dimension.lButtonHeight)
            }
        }
        .frame(width: 50, height: 50)
        .background(Color.miamColor(.primary))
        .cornerRadius(dimension.mCornerRadius)
    }
}

@available(iOS 14, *)
struct MiamBudgetPlannerToolbar_Previews: PreviewProvider {
    static var previews: some View {
        Preview()
    }

    struct Preview: View {
        @State var loading = false
        @State var budgetInfos = BudgetInfos(moneyBudget: 30.0, numberOfGuests: 4, numberOfMeals: 4)
        var body: some View {
            MiamBudgetPlannerToolbar().content(budgetInfos: $budgetInfos,
                                               isLoadingRecipes: $loading, onValidateTapped: {_ in})
        }
    }
}
