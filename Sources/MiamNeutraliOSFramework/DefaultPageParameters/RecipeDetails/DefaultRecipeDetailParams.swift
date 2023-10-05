//
//  DefaultRecipeDetailParams.swift
//  
//
//  Created by didi on 05/10/2023.
//

import Foundation
import MiamIOSFramework
import miamCore

public class DefaultRecipeDetailParams: RecipeDetailsViewParameters {
    public var closeRecipeDetails: () -> Void
    public var sponsorDetailsTapped: (Sponsor) -> Void
    
    public init(closeRecipeDetails: @escaping () -> Void, sponsorDetailsTapped: @escaping (Sponsor) -> Void) {
        self.closeRecipeDetails = closeRecipeDetails
        self.sponsorDetailsTapped = sponsorDetailsTapped
    }
}
