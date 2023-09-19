////
////  MiamNeutralCatalogToolbar.swift
////  
////
////  Created by didi on 08/08/2023.
////
//
//import SwiftUI
//import MiamIOSFramework
//
//@available(iOS 14, *)
//public struct MiamNeutralCatalogToolbar: CatalogToolbarViewTemplate {
//    public init () {}
//    public func content(
//        backTapped: @escaping () -> Void,
//        filtersTapped: @escaping () -> Void,
//        searchTapped: @escaping () -> Void,
//        favoritesTapped: @escaping () -> Void,
//        preferencesTapped: @escaping () -> Void
//    ) -> some View {
//        VStack(alignment: .center, spacing: 0) {
//            MiamNeutralCatalogViewHeader(closeCatalogAction: {backTapped()})
//            MiamNeutralCatalogToolbarView(
//                showBackButton: false,
//                favoritesFilterActive: false,
//                useFilters: true,
//                usePreferences: true,
//                backTapped: {backTapped()},
//                filtersTapped: {filtersTapped()},
//                searchTapped: {searchTapped()},
//                favoritesTapped: {favoritesTapped()},
//                preferencesTapped: {preferencesTapped()})
//        }
//    }
//    
//    
//    @available(iOS 14, *)
//    internal struct MiamNeutralCatalogViewHeader: View {
//        let closeCatalogAction: (() -> Void)?
//        var body: some View {
//            HStack {
//                Image.miamImage(icon: .ideeRepas)
//                    .renderingMode(.template)
//                    .foregroundColor(.white)
//                    .frame(width: 30, height: 30)
//                
//                VStack(alignment: .leading) {
//                    Spacer()
//                    Text(Localization.catalog.title.localised)
//                    //                        Text(MiamText.sharedInstance.mealIdeas)
//                        .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.titleStyle)
//                        .foregroundColor(.white)
//                    Image.miamImage(icon: .yellowUnderline)
//                        .position(x: 145.0, y: -12.0)
//                }
//                Spacer()
//            }
//            .padding(EdgeInsets(top: 16, leading: 11, bottom: 0, trailing: 11))
//            .frame(maxWidth: .infinity, maxHeight: 60)
//            .background(Color.miamColor(.primaryDark))
//        }
//    }
//    
//    @available(iOS 14, *)
//    internal struct MiamNeutralCatalogToolbarView: View {
//        let showBackButton: Bool
//        let favoritesFilterActive: Bool
//        let useFilters: Bool
//        let usePreferences: Bool
//        let backTapped: () -> Void
//        let filtersTapped: () -> Void
//        let searchTapped: () -> Void
//        let favoritesTapped: () -> Void
//        let preferencesTapped: () -> Void
//        
//        var body: some View {
//            HStack(spacing: 16.0) {
//                if showBackButton {
//                    Button {
//                        backTapped()
//                    } label: {
//                        Image.miamImage(icon: .back)
//                    }.frame(width: 40, height: 40)
//                    Spacer()
//                }
//                Button {
//                    searchTapped()
//                } label: {
//                    Image.miamImage(icon: .search)
//                        .renderingMode(.template)
//                        .foregroundColor(Color.miamColor(.primary))
//                }.frame(width: 40, height: 40).background(Color.white).clipShape(Circle())
//                if !showBackButton {
//                    Spacer()
//                }
//                
//                if useFilters {
//                    Button {
//                        filtersTapped()
//                    } label: {
//                        Image.miamImage(icon: .filters)
//                            .renderingMode(.template)
//                            .foregroundColor(Color.miamColor(.primary))
//                    }.frame(width: 40, height: 40).background(Color.white).clipShape(Circle())
//                }
//                
//                if usePreferences {
//                    Button {
//                        preferencesTapped()
//                    } label: {
//                        Image.miamImage(icon: .preferences)
//                            .renderingMode(.template)
//                            .foregroundColor(Color.miamColor(.primary))
//                    }.frame(width: 40, height: 40).background(Color.white).clipShape(Circle())
//                }
//                
//                if !showBackButton {
//                    Button {
//                        favoritesTapped()
//                    } label: {
//                        Image.miamImage(icon: .heart)
//                            .renderingMode(.template)
//                            .foregroundColor(.white)
//                        Text(Localization.catalog.favoriteTitle.localised)
//                        //                                Text(MiamText.sharedInstance.myMealIdeas)
//                            .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.bodyBigStyle)
//                            .foregroundColor(.white)
//                    }
//                    .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
//                    .overlay(Capsule().stroke(.white, lineWidth: 1.0))
//                }
//            }.padding(EdgeInsets(top: Dimension.sharedInstance.mlPadding,
//                                 leading: Dimension.sharedInstance.mlPadding, bottom: 16,
//                                 trailing: Dimension.sharedInstance.mlPadding))
//            .background(Color.miamColor(.primaryDark))
//        }
//    }
//}
//
//@available(iOS 14, *)
//struct MiamNeutralCatalogToolbar_Previews: PreviewProvider {
//    static var previews: some View {
//        MiamNeutralCatalogToolbar().content(
//            backTapped: {},
//            filtersTapped: {},
//            searchTapped: {},
//            favoritesTapped: {},
//            preferencesTapped: {})
//    }
//}
