//
//  MiamNeutralRecipeDetailsHeaderView.swift
//
//
//  Created by didi on 3/8/23.
//


import SwiftUI
import MiamIOSFramework

@available(iOS 14, *)
public struct MiamNeutralRecipeDetailsHeaderView: RecipeDetailsHeaderViewTemplate {
    
    public init() {}
    let imageHeight = 280.0
    
    public func content(infos: RecipeDetailsHeaderInfos) -> some View {
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
                        MiamNeutralLikeButton(recipeId: infos.recipeId)
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

@available(iOS 14, *)
struct MiamNeutralRecipeTimeView: View {
    let preparationTime: String
    let cookingTime: String
    let restingTime: String

    let noPreparationTime = "0s"
    let noCookingTime = "0s"
    let noRestingTime = "0s"

    var body: some View {
        if let template = Template.sharedInstance.recipeTimeViewTemplate {
            template(preparationTime, cookingTime, restingTime)
        } else {
            VStack(alignment: .leading) {
                if preparationTime != noPreparationTime {
                    HStack {
                        Text(RecipeDetailsText.sharedInstance.preparationTime)
                            .miamFontStyle(style: MiamFontStyleProvider().bodyStyle)
                        Text(preparationTime)
                            .miamFontStyle(style: MiamFontStyleProvider().bodyBoldStyle)
                    }
                }
                if cookingTime != noCookingTime {
                    HStack {
                        Text(RecipeDetailsText.sharedInstance.cookingTime)
                            .miamFontStyle(style: MiamFontStyleProvider().bodyStyle)
                        Text(cookingTime)
                            .miamFontStyle(style: MiamFontStyleProvider().bodyBoldStyle)
                    }
                }
                if restingTime != noRestingTime {
                    HStack {
                        Text(RecipeDetailsText.sharedInstance.restingTime)
                            .miamFontStyle(style: MiamFontStyleProvider().bodyStyle)
                        Text(restingTime)
                            .miamFontStyle(style: MiamFontStyleProvider().bodyBoldStyle)
                    }
                }
                Spacer()
            }
        }
    }
}
