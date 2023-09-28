//
//  SwiftUIView.swift
//
//
//  Created by didi on 11/08/2023.
//

import SwiftUI
import MiamIOSFramework

@available(iOS 14, *)
public struct MiamNeutralCatalogPackageCallToAction: CatalogPackageCallToActionViewTemplate {
    public init () {}
    public func content(
        showAll: @escaping (CatalogPackage) -> Void
    ) -> some View {
        Button( action: {
//            showAll
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
struct MiamNeutralCatalogPackageCallToAction_Previews: PreviewProvider {
    static var previews: some View {
        MiamNeutralCatalogPackageCallToAction().content(showAll: {_ in})
    }
}
