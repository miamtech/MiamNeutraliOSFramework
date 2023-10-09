//
//  MiamNeutralCatalogRecipesListTitle.swift
//
//
//  Created by didi on 10/08/2023.
//

import SwiftUI
import MiamIOSFramework

@available(iOS 14, *)
public struct MiamNeutralCatalogPackageTitle: BaseTitleProtocol {
    public init() {}
    public func content(title: String, subtitle: String?) -> some View {
        VStack(alignment: .leading) {
            Text(title)
                .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.titleMediumStyle)
                .padding(Dimension.sharedInstance.mlPadding)
            if let subtitle = subtitle {
                Text(subtitle)
                    .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.titleSmallStyle)
                    .padding(Dimension.sharedInstance.mlPadding)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

@available(iOS 14, *)
struct MiamNeutralCatalogPackageTitle_Previews: PreviewProvider {
    static var previews: some View {
        MiamNeutralCatalogPackageTitle().content(title: "Test", subtitle: "Subtitle")
    }
}
