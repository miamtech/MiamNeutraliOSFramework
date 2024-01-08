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
    let imageHeight:CGFloat = 400
    public func content(
        infos: RecipeDetailsHeaderParameters,
        onRecipeDetailsClosed: @escaping () -> Void,
        onUpdateGuests: @escaping(Int) -> Void
    ) -> some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                Button {
                    onRecipeDetailsClosed()
                } label: {
                    Image.miamImage(icon: .back).renderingMode(.template)
                }.frame(width: 40, height: 40)
                    .foregroundColor(Color.miamColor(.primaryText))
                    .background(Color.white)
                    .clipShape(Circle()).padding()
                Spacer()

                LikeButton(likeButtonInfo: LikeButtonInfo(recipeId: infos.recipeId)).padding(16)
                
                
            }
            Spacer()
            HStack{
                Spacer()
                HStack{
                    Button {
                        onUpdateGuests(max((infos.currentGuests - 1), 1))
//                        infos.currentGuests = max((infos.currentGuests - 1), 1)
                    } label: {
                        Image.miamImage(icon: .minus)
                            .renderingMode(.template).foregroundColor(.black)
                    }
                    Text("\(infos.currentGuests)").frame(minWidth: 10, alignment: .center)

                    Image.miamImage(icon: .people).renderingMode(.template).foregroundColor(.black)
                    Button {
                        onUpdateGuests(infos.currentGuests + 1)
//                        infos.currentGuests = infos.currentGuests + 1
                    } label: {
                        Image.miamImage(icon: .plus)
                            .renderingMode(.template).foregroundColor(.black)
                    }
                }.padding(8).background(Capsule().foregroundColor(Color.white))
                    .padding(16)


            }
        }
        .background(
            (
                (infos.mediaURL != nil) ?
                AnyView(AsyncImage(url: URL(string: infos.mediaURL!)!) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(minWidth: 0, maxWidth: .infinity)
                }) : AnyView(Image.miamImage(icon: .empty))
            )
            .frame(height: imageHeight), alignment: .top)
        .frame(maxWidth: .infinity)
        .frame(height: imageHeight)
        
        
        /*VStack {
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
                    Image.mealzIcon(icon: .pan).frame( height: imageHeight)
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
                            .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.titleStyle)
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
            }*/
        }
}
