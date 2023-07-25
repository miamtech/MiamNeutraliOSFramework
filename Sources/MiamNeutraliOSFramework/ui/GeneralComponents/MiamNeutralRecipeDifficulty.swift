//
//  RecipeDifficulty.swift
//  MiamIOSFramework
//
//  Created by Vincent Kergonna on 04/05/2023.
//  Copyright © 2023 Miam. All rights reserved.
//

import SwiftUI
import miamCore
import MiamIOSFramework

@available(iOS 14, *)
public struct MiamNeutralRecipeDifficulty: View {
    let difficulty: Int

    public init(difficulty: Int) {
        self.difficulty = difficulty
    }

    public var body: some View {
        VStack {
            Image.miamNeutralImage(icon: .chefHat)
            Text(difficultyDescription)
                .miamFontStyle(style: MiamFontStyleProvider().bodyMediumBoldStyle)
                .lineLimit(2)
                .multilineTextAlignment(.leading)
        }
    }

    var difficultyDescription: String {

        switch difficulty {
        case 1: return Localization.recipe.lowDifficulty.localised
        case 2: return Localization.recipe.mediumDifficulty.localised
        default: return Localization.recipe.highDifficulty.localised
        }
    }
}

@available(iOS 14, *)
struct MiamNeutralRecipeDifficulty_Previews: PreviewProvider {
    static var previews: some View {
        MiamNeutralRecipeDifficulty(difficulty: 1)
    }
}
