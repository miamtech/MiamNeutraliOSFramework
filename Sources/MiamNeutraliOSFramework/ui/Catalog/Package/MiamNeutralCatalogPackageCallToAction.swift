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
        title: String,
        subtitle: String?,
        onSeeAllRecipes: @escaping () -> Void
    ) -> some View {
        HStack(alignment: .bottom) {
            VStack(alignment: .leading) {
                Text(title)
                    .foregroundColor(Color.miamNeutralColor(.textPrimary))
                    .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.titleBigStyle)
                    .lineLimit(1)
                if let subtitle = subtitle {
                    Text(subtitle)
                        .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.bodyStyle)
                        .lineLimit(1)
                }
            }
            Button( action: {
                onSeeAllRecipes()
            }, label: {
                HStack {
                    Text(Localization.catalog.showAll.localised)
                        .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.bodyBigBoldStyle)
                        .foregroundColor(Color.miamColor(.primaryDark))
                    Image.miamImage(icon: .rightArrow)
                        .renderingMode(.template)
                        .foregroundColor(Color.miamColor(.primaryDark))
                }
            })
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.vertical, Dimension.sharedInstance.lPadding)
        .padding(.horizontal, Dimension.sharedInstance.mPadding)
    }
}

@available(iOS 14, *)
struct MiamNeutralCatalogPackageCTA_Previews: PreviewProvider {
    static var previews: some View {
        MiamNeutralCatalogPackageCTA().content(
            title: "test",
            subtitle: "test 1",
            onSeeAllRecipes: {}
        )
    }
}
