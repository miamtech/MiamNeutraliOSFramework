//
//  MiamNeutralRecipeDetailsHeaderView.swift
//
//
//  Created by didi on 3/8/23.
//


import SwiftUI
import MiamIOSFramework

@available(iOS 14, *)
public struct MiamNeutralRecipeDetailsHeaderView: RecipeDetailsHeaderProtocol {
    
    public init() {}
    let imageHeight = 280.0
    public func content(
        infos: RecipeDetailsHeaderParameters,
        onRecipeDetailsClosed: @escaping () -> Void
    ) -> some View {
        VStack {
                if let picture =  URL(string: infos.mediaURL ?? "") {
                    AsyncImage(url: picture) { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(minWidth: 0, maxWidth: .infinity)
                    }
                    .frame(height: imageHeight)
                    .clipped()
                } else {
                    Image.miamImage(icon: .empty).frame( height: imageHeight)
                }
                HStack {
                    if infos.isLikeEnabled {
                        LikeButton(likeButtonInfo: LikeButtonInfo(recipeId: infos.recipeId))
                    }
                    Spacer()
                    // question mark
                }
                .padding(.horizontal, Dimension.sharedInstance.sPadding)
                Divider()
                VStack(alignment: .leading, spacing: Dimension.sharedInstance.mPadding) {
                    Text(infos.title)
                            .bold()
                            .miamFontStyle(style: MiamFontStyleProvider().titleStyle)
                            .padding(.bottom, Dimension.sharedInstance.sPadding)
                    HStack(alignment: .center, spacing: Dimension.sharedInstance.xlPadding) {
                        MiamNeutralRecipeDifficulty(difficulty: infos.difficulty)
                        MiamNeutralRecipePreparationTime(duration: infos.totalTime)
                        Spacer()
                    }
                        MiamNeutralRecipeTimeView(
                            preparationTime: infos.preparationTime,
                            cookingTime: infos.cookingTime,
                            restingTime: infos.restingTime)
                    
                }.padding(.horizontal, Dimension.sharedInstance.lPadding)
            }
        }
}
