//
//  MiamNeutralFiltersHeader.swift
//  
//
//  Created by didi on 07/08/2023.
//

import SwiftUI
import MiamIOSFramework

@available(iOS 14, *)
public struct MiamNeutralFiltersHeader: FiltersHeaderProtocol {
    
    public init() {}
    public func content(
        onCloseFilters: @escaping () -> Void
    ) -> some View {
        HStack {
            Text(Localization.catalog.filtersTitle.localised)
                .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.titleMediumStyle)
            Spacer()
            Button {
                onCloseFilters()
            } label: {
                Image.miamImage(icon: .cross)
            }
        }.padding([.top], 20)
    }
}

@available(iOS 14, *)
struct MiamNeutralFiltersHeader_Previews: PreviewProvider {
    static var previews: some View {
        MiamNeutralFiltersHeader().content(onCloseFilters: {})
    }
}
