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
public struct MiamNeutralMealPlannerForm: MealPlannerFormProtocol {
    let dimension = Dimension.sharedInstance
    public init() {}
    public func content(
        mealPlannerCriteria: Binding<MealPlannerCriteria>,
        activelyUpdatingTextField: Binding<Bool>,
        isFetchingRecipes: Bool,
        onFormValidated: @escaping (MealPlannerCriteria) -> Void
    ) -> some View {
        VStack(spacing: 24.0) {
            MiamNeutralMealPlannerBudget(
                budget: mealPlannerCriteria.availableBudget,
                caption: Localization.myBudget.totalBudgetTitle.localised,
                currency: Localization.price.currency.localised)

            MiamNeutralStepper(
                value: mealPlannerCriteria.numberOfGuests,
                caption: Localization.myBudget.numberOfGuestsTitle.localised)
            MiamNeutralStepper(
                value: mealPlannerCriteria.numberOfMeals,
                caption: Localization.myBudget.numberOfMealsTitle.localised)

            MealPlannerSubmitCTA(isLoading: isFetchingRecipes) {
                onFormValidated(mealPlannerCriteria.wrappedValue)
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
        @State var mealPlannerCriteria = MealPlannerCriteria(
            availableBudget: 40.0,
            numberOfGuests: 3,
            numberOfMeals: 2)

        var body: some View {
            MiamNeutralMealPlannerForm().content(
                mealPlannerCriteria: $mealPlannerCriteria,
                activelyUpdatingTextField: .constant(false),
                isFetchingRecipes: false,
                onFormValidated: { _ in })
        }
    }
}
