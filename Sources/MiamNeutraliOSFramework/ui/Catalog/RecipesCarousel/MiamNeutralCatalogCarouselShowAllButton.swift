//
//  SwiftUIView.swift
//  
//
//  Created by didi on 11/08/2023.
//

import SwiftUI
import MiamIOSFramework

@available(iOS 14, *)
public struct MiamNeutralCatalogCarouselShowAllButton: CatalogCarouselShowAllButtonViewTemplate {
    public init () {}
    public func content(
        showAll: @escaping (CatalogPackage) -> Void
    ) -> some View {
        HStack {}
    }
}

@available(iOS 14, *)
struct MiamNeutralCatalogCarouselShowAllButton_Previews: PreviewProvider {
    static var previews: some View {
        MiamNeutralCatalogCarouselShowAllButton().content(showAll: {_ in})
    }
}