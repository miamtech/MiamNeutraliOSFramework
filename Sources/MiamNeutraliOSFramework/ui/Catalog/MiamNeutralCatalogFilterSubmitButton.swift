//
//  SwiftUIView.swift
//  
//
//  Created by didi on 07/08/2023.
//
import SwiftUI
import MiamIOSFramework
import miamCore

@available(iOS 14, *)
public struct MiamNeutralCatalogFilterSubmitAndClearButton: CatalogFilterSubmitAndClearButtonsViewTemplate {
    public init() {}
    public func content(
        numberOfRecipes: Int,
        submit: @escaping () -> Void,
        clear: @escaping () -> Void
    ) -> some View {
        VStack {
            Button {
                clear()
            } label: {
                Text(Localization.catalog.removeFilters.localised)
                    .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.bodyBigStyle)
                    .foregroundColor(Color.miamColor(.primaryText))
            }.padding(EdgeInsets(top: 9, leading: 20, bottom: 9, trailing: 20))
            Divider().padding([.bottom, .top], 10)
            Button {
                submit()
            } label: {
                Text("Voir les \(numberOfRecipes) idées repas")
                    .padding(EdgeInsets(top: 9, leading: 20, bottom: 9, trailing: 20))
                    .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.bodyBigStyle)
                    .foregroundColor(.white)
                    .background(Color.miamColor(.primary))
                    .clipShape(Capsule())
            }
        }
    }
}

@available(iOS 14, *)
struct MiamNeutralCatalogFilterSubmitAndClearButton_Previews: PreviewProvider {
    static var previews: some View {
        MiamNeutralCatalogFilterSubmitAndClearButton().content(numberOfRecipes: 8, submit: {}, clear: {})
    }
}
