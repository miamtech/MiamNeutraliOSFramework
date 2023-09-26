//
//  MiamNeutralCatalogResultsToolbar.swift
//
//
//  Created by didi on 08/08/2023.
//

import SwiftUI
import MiamIOSFramework

@available(iOS 14, *)
public struct MiamNeutralCatalogResultsToolbar: CatalogToolbarViewTemplate {
    public init () {}
    public func content(
        backTapped: @escaping () -> Void,
        filtersTapped: @escaping () -> Void,
        searchTapped: @escaping () -> Void,
        favoritesTapped: @escaping () -> Void,
        preferencesTapped: @escaping () -> Void
    ) -> some View {
        HStack(spacing: 16.0) {
            Spacer()
            CatalogToolbarButtonFormat(
                icon: Image.miamImage(icon: .search),
                action: searchTapped)
            CatalogToolbarButtonFormat(
                icon: Image.miamImage(icon: .filters),
                action: filtersTapped)
            CatalogToolbarButtonFormat(
                icon: Image.miamImage(icon: .preferences),
                action: preferencesTapped)
        }.padding(EdgeInsets(
            top: Dimension.sharedInstance.mlPadding,
            leading: Dimension.sharedInstance.mlPadding,
            bottom: 16,
            trailing: Dimension.sharedInstance.mlPadding))
        .background(Color.miamColor(.primaryDark))
    }
}

@available(iOS 14, *)
struct MiamNeutralCatalogResultsToolbar_Previews: PreviewProvider {
    static var previews: some View {
        MiamNeutralCatalogToolbar().content(
            backTapped: {},
            filtersTapped: {},
            searchTapped: {},
            favoritesTapped: {},
            preferencesTapped: {})
    }
}
