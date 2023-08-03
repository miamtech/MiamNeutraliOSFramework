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
    
    public func content(infos: RecipeDetailsHeaderInfos, showTitleInHeader: Binding<Bool>) -> some View {
        if let template = Template.sharedInstance.recipeDetailsHeaderTemplate {
            template(infos.mediaURL,
                     infos.title,
                     infos.difficulty,
                     infos.totalTime,
                     showTitleInHeader,
                     infos.isLikeEnabled,
                     infos.recipeId)
        } else {
           
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
                    HStack {
                        Spacer()
                        MiamNeutralLikeButton(recipeId: infos.recipeId)
                    }
                    //                    .frame(height: 50.0, alignment: .topLeading)
                    .padding(Dimension.sharedInstance.lPadding)
                }
             Spacer()
                // question mark
                
            }
            
            HStack {
                Text(infos.title)
                    .miamFontStyle(style: MiamFontStyleProvider().titleStyle)
                    .foregroundColor(Color.miamColor(.black))
                    .padding(.horizontal, Dimension.sharedInstance.lPadding)
                    .frame( alignment: .topLeading)
                    
                Spacer()
            }

            HStack(alignment: .center) {
                MiamNeutralRecipePreparationTime(duration: infos.totalTime)
                MiamNeutralRecipeDifficulty(difficulty: infos.difficulty)
                Spacer()
            }.padding(.vertical, Dimension.sharedInstance.lPadding)
            MiamNeutralRecipeTimeView(preparationTime: infos.preparationTime,
                           cookingTime: infos.cookingTime,
                           restingTime: infos.restingTime)
//                .padding(.horizontal, Dimension.sharedInstance.lPadding)
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
            }.padding(.horizontal, Dimension.sharedInstance.lPadding)
        }

    }
}
