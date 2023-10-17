//
//  MiamNeutralFiltersSection.swift
//  
//
//  Created by didi on 07/08/2023.
//

import SwiftUI
import MiamIOSFramework
import miamCore

@available(iOS 14, *)
public struct MiamNeutralFiltersSection: FiltersSectionProtocol {
    public init() {}
    public func content(
        title: String,
        filters: [CatalogFilterOptions],
        onFilterSelected: @escaping (CatalogFilterOptions) -> Void
    ) -> some View {
        
        return VStack {
            Text(title)
            .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.titleMediumStyle)
            ForEach(filters, id: \.self) { filter in
                    HStack {
                        Button {
                            onFilterSelected(filter)
                        } label: {
                            if filter.isSelected {
                                var icon: MiamIOSFramework.MiamIcon {
                                    filter.isSelected ? .check : .cross
                                }
                                Image.miamImage(icon: icon)
                            } else {
                                Rectangle().foregroundColor(.clear)
                            }
                        }.frame(width: 22, height: 22)
                            .overlay(RoundedRectangle(cornerRadius: 4.0).stroke(Color.miamColor(.primary), lineWidth: 1.0))
                        Text(filter.uiLabel)
                            .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.bodyBigStyle)
                        Spacer()
                    }
                }
            }
        }
}

@available(iOS 14, *)
struct MiamNeutralFiltersSection_Previews: PreviewProvider {
    static var previews: some View {
        MiamNeutralFiltersSection().content(
            title: "Catalog Filter",
            filters: [
                CatalogFilterOptions(name: "Hello World", uiLabel: "Test", isSelected: false),
                CatalogFilterOptions(name: "Bonjour", uiLabel: "le test", isSelected: true)
            ],
            onFilterSelected: { _ in }
        )
    }
}
