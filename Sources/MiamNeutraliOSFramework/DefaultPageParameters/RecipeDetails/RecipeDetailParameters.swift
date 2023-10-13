//
//  RecipeDetailParameters.swift
//  
//
//  Created by didi on 05/10/2023.
//

import Foundation
import MiamIOSFramework
import miamCore

@available(iOS 14, *)
public class RecipeDetailParameters: RecipeDetailsParametersProtocol {
    
    public var onClosed: () -> Void
    public var onSponsorDetailsTapped: (Sponsor) -> Void
    public var onContinueToBasket: (() -> Void)?
    
    public var header: TypeSafeRecipeDetailsHeader
    public var sponsor: TypeSafeRecipeDetailsSponsor
    public var ingredients: TypeSafeRecipeDetailsIngredients
    public var steps: TypeSafeRecipeDetailsSteps
    public var footer: TypeSafeRecipeDetailsFooter
    public var background: TypeSafeBackground
    public var empty: TypeSafeEmpty
    public var loading: TypeSafeLoading
    
    public init(
        onClosed: @escaping () -> Void,
        onSponsorDetailsTapped: @escaping (Sponsor) -> Void,
        onContinueToBasket: (() -> Void)? = nil,
        viewOption: RecipeDetailsViewOptions = RecipeDetailsViewOptions()
    ) {
        self.onClosed = onClosed
        self.onSponsorDetailsTapped = onSponsorDetailsTapped
        self.onContinueToBasket = onContinueToBasket
        self.header = viewOption.header
        self.sponsor = viewOption.sponsor
        self.ingredients = viewOption.ingredients
        self.steps = viewOption.steps
        self.footer = viewOption.footer
        self.background = viewOption.background
        self.empty = viewOption.empty
        self.loading = viewOption.loading
    }
}

@available(iOS 14, *)
public struct RecipeDetailsViewOptions {
    public var header: TypeSafeRecipeDetailsHeader
    public var sponsor: TypeSafeRecipeDetailsSponsor
    public var ingredients: TypeSafeRecipeDetailsIngredients
    public var steps: TypeSafeRecipeDetailsSteps
    public var footer: TypeSafeRecipeDetailsFooter
    public var background: TypeSafeBackground
    public var empty: TypeSafeEmpty
    public var loading: TypeSafeLoading
    
    public init(
        header: TypeSafeRecipeDetailsHeader = TypeSafeRecipeDetailsHeader(MiamNeutralRecipeDetailsHeaderView()),
        sponsor: TypeSafeRecipeDetailsSponsor = TypeSafeRecipeDetailsSponsor(MiamNeutralRecipeDetailsSponsor()),
        ingredients: TypeSafeRecipeDetailsIngredients = TypeSafeRecipeDetailsIngredients(MiamNeutralRecipeDetailsIngredientsView()),
        steps: TypeSafeRecipeDetailsSteps = TypeSafeRecipeDetailsSteps(MiamNeutralRecipeDetailsStepsView()),
        footer: TypeSafeRecipeDetailsFooter = TypeSafeRecipeDetailsFooter(MiamNeutralRecipeDetailsFooterView()),
        empty: TypeSafeEmpty = TypeSafeEmpty(DefaultEmptyView()),
        loading: TypeSafeLoading = TypeSafeLoading(DefaultLoadingView()),
        background: TypeSafeBackground = TypeSafeBackground(DefaultBackgroundView())
    ) {
        self.header = header
        self.sponsor = sponsor
        self.ingredients = ingredients
        self.steps = steps
        self.footer = footer
        self.background = background
        self.empty = empty
        self.loading = loading
    }
}
