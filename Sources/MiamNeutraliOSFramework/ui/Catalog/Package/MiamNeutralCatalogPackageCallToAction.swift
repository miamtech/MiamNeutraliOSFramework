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
            Text("Tout voir")
        })
    }
}

@available(iOS 14, *)
struct MiamNeutralCatalogPackageCallToAction_Previews: PreviewProvider {
    static var previews: some View {
        MiamNeutralCatalogPackageCallToAction().content(showAll: {_ in})
    }
}
