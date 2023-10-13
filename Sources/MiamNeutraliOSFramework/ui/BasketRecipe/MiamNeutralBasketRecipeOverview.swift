//
//  MiamNeutralBasketRecipeOverview.swift
//  
//
//  Created by didi on 02/10/2023.
//

import SwiftUI
import MiamIOSFramework

@available(iOS 14, *)
public struct MiamNeutralBasketRecipeOverview: BasketRecipeOverviewProtocol {
    public init() {}
    public func content(
        recipeCardDimensions: CGSize,
        infos: BasketRecipeInfos,
        actions: BasketRecipeActions
    ) -> some View {
        
        func recipePicture() -> some View {
            return AsyncImage(url: infos.recipe.pictureURL) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            }
            .frame(width: 120, height: 120, alignment: .topLeading)
            .cornerRadius(12.0)
            .clipped()
        }
        
        var chevronAngle: CGFloat {
            if infos.isExpanded { return 0.0}
            else { return -90.0 }
        }
        
        func linkToRecipeDetail() -> some View {
            return  Button {
                actions.onRecipeTapped(infos.recipe.id)
            } label: {
                Text(Localization.recipe.showDetails.localised)
                    .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.bodyBigBoldStyle)
                    .foregroundColor(Color.miamColor(.primaryText))
            }.padding([.top], Dimension.sharedInstance.sPadding)
        }
        
        return VStack(alignment: .leading, spacing: 0) {
            HStack {
                recipePicture()
                VStack(alignment: .leading) {
                    Text(infos.recipe.attributes?.title ?? "")
                        .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.titleMediumStyle)
                        .foregroundColor(Color.miamColor(.black))
                    Text(infos.pricePerPerson)
                        .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.bodyBigLightStyle)
                        .foregroundColor(Color.miamColor(.secondaryText))
                    HStack {
                        linkToRecipeDetail()
                        Spacer()
                        if infos.isExpandable {
                            Button {
                                withAnimation(.default) {
                                    actions.expand()
                                }
                            } label: {
                                Image.miamImage(icon: .chevronDown).rotationEffect(Angle.degrees(chevronAngle))
                            }.padding([.trailing], Dimension.sharedInstance.lPadding)
                        }
                    }
                }.padding([.leading], Dimension.sharedInstance.sPadding)
            }
            .frame(height: recipeCardDimensions.height, alignment: .topLeading)
            HStack {
                if infos.isReloading {
                    ProgressLoader(color: Color.miamNeutralColor(.primary))
                        .scaleEffect(0.5)
                } else {
                    Text(infos.price.currencyFormatted)
                        .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.bodyBigBoldStyle)
                        .foregroundColor(Color.miamColor(.primary))
                }
                Spacer()
                MiamNeutralCounterView(
                    count: infos.guests,
                    lightMode: false,
                    onCounterChanged: { guestCount in actions.updateGuests(guestCount) },
                    isLoading: infos.isReloading,
                    isDisable: infos.isReloading,
                    minValue: 1,
                    maxValue: 99)
            }
        }
        .padding([.leading, .trailing], 16.0)
        .padding(.top, Dimension.sharedInstance.sPadding)
    }
}

@available(iOS 14, *)
struct MiamNeutralBasketRecipeOverview_Previews: PreviewProvider {
    static var previews: some View {
        let infos = BasketRecipeInfos(
            recipe: FakeRecipe().createRandomFakeRecipe(),
            price: 40.4,
            pricePerPerson: "43",
            guests: 4,
            isReloading: false,
            totalProductCount: 5,
            isExpandable: true,
            isExpanded: true)
        let actions = BasketRecipeActions(
            delete: {},
            expand: {},
            updateGuests: { _ in },
            onRecipeTapped: { _ in })
        
        return MiamNeutralBasketRecipeOverview().content(
            recipeCardDimensions: CGSize(width: 150.0, height: 300.0),
            infos: infos,
            actions: actions)
    }
}
