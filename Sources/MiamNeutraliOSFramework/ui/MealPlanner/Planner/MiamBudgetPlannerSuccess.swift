//
//  MiamBudgetPlannerSuccess.swift
//  MiamIOSFramework
//
//  Created by didi on 5/16/23.
//  Copyright © 2023 Miam. All rights reserved.
//

import SwiftUI
import miamCore
import MiamIOSFramework

@available(iOS 14, *)
public struct MiamBudgetPlannerSuccess: MealPlannerSuccess {
    public init() {}
    public func content(budgetPlannerInfos: MealPlannerInfos, onValidate: @escaping () -> Void) -> some View {

        ScrollView {
            ForEach(budgetPlannerInfos.recipes, id: \.self) { recipe in
                RecipeCardView(recipeId: recipe)
            }
        }

//        GeometryReader {
//            let safeArea = $0.safeAreaInsets
//            MiamDynamicHeader(
//                safeArea: safeArea,
//                expandedHeader: {MiamBudgetForm()
//                    .content(budgetInfos: budgetPlannerInfos.budgetInfos, onBudgetChanged: onBudgetChanged, onFormValidated: onFormValidated)},
//                collapsedHeader: {MiamBudgetPlannerToolbar()
//                    .content(budgetInfos: budgetPlannerInfos.budgetInfos, onValidateTapped: onFormValidated)},
//                content: {
//                    ForEach(1..<11) { _ in
//                        VStack {
//                            Text("hello world")
//                            AsyncImage(url: URL(string: "https://picsum.photos/200/300")!) { image in
//                                image
//                                    .resizable()
//                                    .frame(minWidth: 0, maxWidth: .infinity, maxHeight: .infinity)
//                            }
//                        }
//                    }
//                }
//            )
//        }
    }
}

@available(iOS 14, *)
struct MiamBudgetPlannerSuccessPreview: PreviewProvider {
    static var previews: some View {
        let recipeAttributes = RecipeAttributes(title: "Salade grecque sur deux lignes",
            recipeDescription: "Coconut based recipe",
            numberOfGuests: 4,
            preparationTime: 3000000000000,
            cookingTime: 3000000000000,
            restingTime: 3000000000000,
            computedCost: nil,
    mediaUrl: "https://hips.hearstapps.com/hmg-prod/images/is-coconut-oil-healthy-1650650710.jpg?crop=0.669xw:1.00xh;0.0637xw,0&resize=1200:*",
                                                difficulty: 3)
        let recipe = RecipeFakeFactory().create(id: "234",
                                                attributes: recipeAttributes,
                                                relationships: nil)
        MiamBudgetPlannerSuccess()
            .content(budgetPlannerInfos: MealPlannerInfos(recipes: ["234"], budgetInfos: BudgetInfos(moneyBudget: 22.0, numberOfGuests: 4, numberOfMeals: 5),
                totalPrice: Price(price: 21.34, currency: "EUR")),
                onValidate: {
            print("Remove recipe card.")
        }).padding(16.0)
    }
}
