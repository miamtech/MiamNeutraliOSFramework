//
//  SwiftUIView.swift
//  
//
//  Created by didi on 07/08/2023.
//

import SwiftUI
import miamCore
import MiamIOSFramework

@available(iOS 14, *)
struct MiamNeutralCatalogFilterRow: CatalogFilterRowViewTemplate {
    func content(
        filter: CatalogFilterOptions,
        filterSelected: @escaping (CatalogFilterOptions) -> Void
    ) -> some View {
        var icon: MiamIOSFramework.MiamIcon {
            filter.isSelected ? .check : .cross
        }
        return    HStack {
            Button {
                filterSelected(filter)
            } label: {
                if filter.isSelected {
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

@available(iOS 14, *)
struct MiamNeutralCatalogFilterRow_Previews: PreviewProvider {
    static var previews: some View {
        MiamNeutralCatalogFilterRow().content(filter: CatalogFilterOptions(name: "Hello World", uiLabel: "Test", isSelected: false), filterSelected: {_ in})
    }
}
