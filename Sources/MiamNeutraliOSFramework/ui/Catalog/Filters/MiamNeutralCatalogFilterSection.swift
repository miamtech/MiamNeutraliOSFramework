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
public struct MiamNeutralCatalogFilterSectionTitle: CatalogFilterSectionTitleViewTemplate {
    public init() {}
    public func content(
        title: String
    ) -> some View {
        Text(title)
            .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.titleMediumStyle)
    }
}

@available(iOS 14, *)
struct MiamNeutralCatalogFilterSectionTitle_Previews: PreviewProvider {
    static var previews: some View {
        MiamNeutralCatalogFilterSectionTitle().content(
            title: "Catalog Filter"
        )
    }
}
