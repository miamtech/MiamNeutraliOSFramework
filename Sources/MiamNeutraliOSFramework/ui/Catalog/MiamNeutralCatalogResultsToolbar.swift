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
    let hasPreferences: Bool
    public init (hasPreferences: Bool = true) {
        self.hasPreferences = hasPreferences
    }
    public func content(
        onFiltersTapped: @escaping () -> Void,
        onSearchTapped: @escaping () -> Void,
        onFavoritesTapped: @escaping () -> Void,
        onPreferencesTapped: @escaping () -> Void
    ) -> some View {
        HStack(spacing: Dimension.sharedInstance.xlPadding) {
            CatalogToolbarSearchButton(onSearchTapped: onSearchTapped)
            Spacer()
            CatalogToolbarButtonFormat(icon:  Image.miamImage(icon: .filters), action: onFiltersTapped)
            if hasPreferences {
                CatalogToolbarButtonFormat(icon:  Image.miamImage(icon: .preferences), action: onPreferencesTapped)
            }
        }
        .padding(Dimension.sharedInstance.mlPadding)
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

