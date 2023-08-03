//
//  MiamNeutralRecipeDetailsFooterView.swift
//
//
//  Created by didi on 6/19/23.
//

import SwiftUI
import miamCore
import MiamIOSFramework

@available(iOS 14, *)
public struct MiamNeutralRecipeDetailsFooterView: RecipeDetailsFooterTemplate {
    
    public init() {}
    
    let dimension = Dimension.sharedInstance
//    let color = MiamIOSFramework.Color
    
   public func content(pricePerPerson: String, priceForMeal: String) -> some View {
        VStack {
           Divider()
            Button(action: {
                
            }, label: {
                // TODO: recipeDetails localize
                Text("Voir plus d'idées repas")
                    .foregroundColor(Color.miamNeutralColor(.primary))
                    .miamFontStyle(style: MiamFontStyleProvider().bodyStyle)
            })
            Divider()
            Text(pricePerPerson)
                .foregroundColor(Color.miamNeutralColor(.primary))
                .miamFontStyle(style: MiamFontStyleProvider().titleStyle)
            // TODO: recipeDetails localize
            Text("Voir plus d'idées repas")
                .miamFontStyle(style: MiamFontStyleProvider().bodySmallStyle)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 90)
        .padding(.horizontal, dimension.lPadding)
        .background(Color.white)
    }
}



@available(iOS 14, *)
struct CoursesURecipeDetailsFooterView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.budgetBackgroundColor
            VStack {
                MiamNeutralRecipeDetailsFooterView().content(pricePerPerson: "4.92", priceForMeal: "13.36")
                MiamNeutralRecipeDetailsFooterView().content(pricePerPerson: "6.73", priceForMeal: "25.32")
                MiamNeutralRecipeDetailsFooterView().content(pricePerPerson: "1.34", priceForMeal: "6.78")
            }
        }
        
        GeometryReader { geometry in
            let safeArea = geometry.safeAreaInsets
            ZStack(alignment: .bottom) {
                ScrollView {
                    VStack {
                        LazyVStack(spacing: 0) {
                            ForEach(1..<11) { index in
                                VStack {
                                    Text("hello world \(index)")
                                    AsyncImage(url: URL(string: "https://picsum.photos/200/300")!) { image in
                                        image
                                            .resizable()
                                            .frame(minWidth: 0, maxWidth: .infinity, maxHeight: .infinity)
                                    }
                                }
                            }
                        }
                        .padding(.bottom, (geometry.safeAreaInsets.bottom + 150)) // Add padding for safe area at bottom
                    }
                }
                StickyFooter(safeArea: safeArea) {
                    MiamNeutralRecipeDetailsFooterView().content(pricePerPerson: "1.34", priceForMeal: "6.78")
                }
                .frame(maxWidth: .infinity)
            }
        }
    }
}

