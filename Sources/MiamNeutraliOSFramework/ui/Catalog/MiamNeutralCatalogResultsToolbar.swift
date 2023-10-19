//
//  MiamNeutralCatalogResultsToolbar.swift
//
//
//  Created by didi on 08/08/2023.
//

import SwiftUI
import MiamIOSFramework

@available(iOS 14, *)
public struct MiamNeutralCatalogResultsToolbar: CatalogToolbarProtocol {
    public init () {}
    public func content(
        onFiltersTapped: @escaping () -> Void,
        onSearchTapped: @escaping () -> Void,
        onFavoritesTapped: @escaping () -> Void,
        onPreferencesTapped: @escaping () -> Void
    ) -> some View {
        HStack(spacing: 16.0) {
            Spacer()
            CatalogToolbarButtonFormat(
                icon: Image.miamImage(icon: .search),
                action: onSearchTapped)
            CatalogToolbarButtonFormat(
                icon: Image.miamImage(icon: .filters),
                action: onFiltersTapped)
            CatalogToolbarButtonFormat(
                icon: Image.miamImage(icon: .preferences),
                action: onPreferencesTapped)
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
            onFiltersTapped: {},
            onSearchTapped: {},
            onFavoritesTapped: {},
            onPreferencesTapped: {})
    }
}

