////
////  MiamNeutralCatalogRecipesListNoResults.swift
////  
////
////  Created by didi on 10/08/2023.
////
//
//import SwiftUI
//import MiamIOSFramework
//import miamCore
//
//@available(iOS 14, *)
//public struct MiamNeutralCatalogCarouselNoResults: CatalogCarouselNoResultsViewTemplate {
//    let searchString: String = FilterViewModelInstance.shared.instance.currentState.searchString ?? ""
//    public init() {}
//    public func content(
//        showingFavorites: Bool,
//        browseCatalogAction: @escaping () -> Void
//    ) -> some View {
//        VStack(spacing: 32.0) {
//            Image.miamImage(icon: .noResults)
//
//            if showingFavorites {
//                Text(Localization.catalog.preferencesNoResult.localised)
////                Text(MiamText.sharedInstance.noFavoritRecipeYet)
//                    .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.titleBigStyle)
//                    .multilineTextAlignment(.center)
//                    .foregroundColor(Color.miamColor(.white))
//                Button {
//                        browseCatalogAction()
//                } label: {
//                    Text(Localization.catalog.browseRecipes.localised)
//                        .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.bodyBigBoldStyle)
//                        .foregroundColor(Color.miamColor(.primary))
//                    Image.miamImage(icon: .rightArrow)
//                }
//                .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
//                .background(Capsule().foregroundColor(.white))
//                .overlay(Capsule().stroke(.white, lineWidth: 1.0))
//            } else {
//                Text("\(Localization.catalog.noRecipeFound.localised) \"\(searchString)\"")
//                    .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.titleBigStyle)
//                    .multilineTextAlignment(.center)
//                    .foregroundColor(Color.miamColor(.white))
//                
//                Text(Localization.catalog.tryAnotherSearch.localised)
//                    .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.bodyBigStyle)
//                    .foregroundColor(Color.miamColor(.white))
//            }
//        }
//        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .padding(10)
//        .background(Color.miamColor(.primaryDark))
//    }
//}
//
//@available(iOS 14, *)
//struct MiamNeutralCatalogCarouselNoResults_Previews: PreviewProvider {
//    static var previews: some View {
//        MiamNeutralCatalogCarouselNoResults().content(showingFavorites: false, browseCatalogAction: {})
//    }
//}
