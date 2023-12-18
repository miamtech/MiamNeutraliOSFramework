//
//  MiamNeutralCatalogToolbar.swift
//
//
//  Created by didi on 08/08/2023.
//

import SwiftUI
import MiamIOSFramework

@available(iOS 14, *)
public struct MiamNeutralCatalogToolbar: CatalogToolbarProtocol {
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
        VStack(alignment: .leading, spacing: Dimension.sharedInstance.lPadding) {
            Text(Localization.catalog.title.localised)
                .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.titleBigStyle)
            HStack(spacing: Dimension.sharedInstance.xlPadding) {
                CatalogToolbarSearchButton(onSearchTapped: onSearchTapped)
                Spacer()
                CatalogToolbarButtonFormat(icon:  Image.miamImage(icon: .filters), action: onFiltersTapped)
                if hasPreferences {
                    CatalogToolbarButtonFormat(icon:  Image.miamImage(icon: .preferences), action: onPreferencesTapped)
                }
                CatalogToolbarButtonFormat(icon:  Image.miamImage(icon: .heart), action: onFavoritesTapped)
            }
        }
        .padding(Dimension.sharedInstance.mlPadding)
    }
}

@available(iOS 14, *)
struct CatalogToolbarButtonFormat: View {
    let icon: Image
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            icon
                .renderingMode(.template)
                .resizable()
                .frame(width: 18, height: 18)
                .foregroundColor(Color.miamColor(.primaryDark))
        }
        .frame(width: 30)
    }
}

@available(iOS 14, *)
struct CatalogToolbarSearchButton: View {
    let onSearchTapped: () -> Void
    var body: some View {
        Button {
            onSearchTapped()
        } label: {
            Image.miamImage(icon: .search)
                .resizable()
                .frame(width: 18, height: 18)
                .foregroundColor(.white)
        }
        .padding(Dimension.sharedInstance.mlPadding)
        .background(Color.miamColor(.primaryDark))
        .cornerRadius(Dimension.sharedInstance.sCornerRadius)
    }
}

@available(iOS 14, *)
struct MiamNeutralCatalogToolbar_Previews: PreviewProvider {
    static var previews: some View {
        MiamNeutralCatalogToolbar().content(
            onFiltersTapped: {},
            onSearchTapped: {},
            onFavoritesTapped: {},
            onPreferencesTapped: {})
    }
}
