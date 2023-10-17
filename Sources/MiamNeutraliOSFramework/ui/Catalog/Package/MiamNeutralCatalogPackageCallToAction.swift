//
//  MiamNeutralCatalogPackageCTA.swift
//
//
//  Created by didi on 11/08/2023.
//

import SwiftUI
import MiamIOSFramework

@available(iOS 14, *)
public struct MiamNeutralCatalogPackageCTA: CatalogPackageCTAProtocol {
    public init () {}
    public func content(
        onSeeAllRecipes: @escaping () -> Void
    ) -> some View {
        Button( action: {
            onSeeAllRecipes()
        }, label: {
            Text(Localization.catalog.showAll.localised)
                .underline()
                .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.bodyBigStyle)
                .foregroundColor(Color.miamColor(.primary))
                .padding([.trailing], 16.0).padding([.top], 8)
                .frame(maxWidth: .infinity, alignment: .trailing)
        })
    }
}

@available(iOS 14, *)
struct MiamNeutralCatalogPackageCTA_Previews: PreviewProvider {
    static var previews: some View {
        MiamNeutralCatalogPackageCTA().content(onSeeAllRecipes: {})
    }
}
