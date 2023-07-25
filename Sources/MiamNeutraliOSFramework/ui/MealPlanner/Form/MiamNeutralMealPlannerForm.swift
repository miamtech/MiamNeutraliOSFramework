//
//  MiamBudgetForm.swift
//  MiamIOSFramework
//
//  Created by Vincent Kergonna on 26/04/2023.
//  Copyright © 2023 Miam. All rights reserved.
//

import SwiftUI
import MiamIOSFramework

@available(iOS 14, *)
public struct MiamNeutralMealPlannerForm: MealPlannerForm {
    let dimension = Dimension.sharedInstance
    public init() {}
    public func content(budgetInfos: Binding<BudgetInfos>,
                        isFetchingRecipes: Bool,
                        onFormValidated: @escaping (BudgetInfos) -> Void) -> some View {
        VStack(spacing: 24.0) {
            MiamNeutralMealPlannerBudget(
                budget: budgetInfos.moneyBudget,
                caption: Localization.myBudget.totalBudgetTitle.localised,
                currency: Localization.price.currency.localised)

            MiamNeutralStepper(
                value: budgetInfos.numberOfGuests,
                caption: Localization.myBudget.numberOfGuestsTitle.localised)
            MiamNeutralStepper(
                value: budgetInfos.numberOfMeals,
                caption: Localization.myBudget.numberOfMealsTitle.localised)

            MealPlannerSubmitCTA(isLoading: isFetchingRecipes) {
                onFormValidated(budgetInfos.wrappedValue)
            }
        }
        .padding(dimension.mlPadding)
    }
}

@available(iOS 14, *)
struct MiamNeutralMealPlannerFormPreview: PreviewProvider {
    static var previews: some View {
        BudgetFormPreview()
    }

    struct BudgetFormPreview: View {
        @State var budgetInfos = BudgetInfos(moneyBudget: 40.0, numberOfGuests: 3, numberOfMeals: 2)

        var body: some View {
            MiamBudgetForm().content(budgetInfos: $budgetInfos, isFetchingRecipes: false, onFormValidated: { _ in })
        }
    }
}
