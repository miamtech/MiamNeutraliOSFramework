//
//  MiamNeutralCatalogFilterTitleAndClose.swift
//  
//
//  Created by didi on 07/08/2023.
//

import SwiftUI
import MiamIOSFramework

@available(iOS 14, *)
public struct MiamNeutralCatalogFilterTitleAndClose: CatalogFilterTitleAndCloseViewTemplate {
    
    public init() {}
    
    public func content(
        closeFilters: @escaping () -> Void
    ) -> some View {
        HStack {
            Text(Localization.catalog.filtersTitle.localised)
                .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.titleMediumStyle)
            Spacer()
            Button {
                closeFilters()
            } label: {
                Image.miamImage(icon: .cross)
            }
        }.padding([.top], 20)
    }
}

@available(iOS 14, *)
struct MiamNeutralCatalogFilterTitleAndClose_Previews: PreviewProvider {
    static var previews: some View {
        MiamNeutralCatalogFilterTitleAndClose().content(closeFilters: {})
    }
}
