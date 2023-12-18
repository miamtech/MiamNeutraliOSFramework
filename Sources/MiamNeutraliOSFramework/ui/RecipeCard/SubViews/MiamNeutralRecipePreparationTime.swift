//
//  RecipePreparationTime.swift
//  MiamIOSFramework
//
//  Created by Vincent Kergonna on 04/05/2023.
//  Copyright © 2023 Miam. All rights reserved.
//

import SwiftUI

@available(iOS 14, *)
public struct MiamNeutralRecipePreparationTime: View {
    let duration: String

    public init(duration: String) {
        self.duration = duration
    }

    public var body: some View {
        VStack {
            Image.miamNeutralImage(icon: .time)
            Text(duration)
                .miamFontStyle(style: MiamFontStyleProvider().bodyMediumBoldStyle)
                .lineLimit(2)
                .multilineTextAlignment(.leading)
        }
    }
}

@available(iOS 14, *)
struct MiamNeutralRecipePreparationTime_Previews: PreviewProvider {
    static var previews: some View {
        MiamNeutralRecipePreparationTime(duration: "10 min.")
    }
}
