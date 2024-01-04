//
//  ItemSelectorProductRow.swift
//  
//
//  Created by Miam on 04/10/2023.
//

import Foundation
import SwiftUI
import miamCore
import MiamIOSFramework

@available(iOS 14, *)
struct ItemSelectorProductRow: View {

    private var isSelected: Bool
    private var product: Item

    init(product: Item, isSelected: Bool = false) {
        self.isSelected = isSelected
        self.product = product
    }

    var body: some View {
        let unitPrice = Double(product.attributes?.unitPrice ?? "0.0")?.currencyFormatted
            return VStack {
                HStack {
                    if let picture = URL(string: product.attributes?.image ?? "") {
                        AsyncImage(url: picture) { image in
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                        }
                        .frame(width: 90, height: 90)
                        .clipped()
                    } else {
                        Image.mealzIcon(icon: .pan).frame(width: 90, height: 90)
                    }
                    VStack(alignment: .leading) {
                        Text(product.attributes?.brand ?? "" )
                            .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.bodySmallBoldStyle)
                            .padding(.bottom, 8)
                        Text(product.attributes?.name ??  "")
                            .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.bodySmallBoldStyle)
                            .padding(.bottom, 32)
                        HStack {
                            Spacer()
                            Text(unitPrice ?? "0.0")
                                .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.bodyBigBoldStyle)
                                .padding(.trailing, 16)
                            Text(isSelected ? Localization.itemSelector.inBasket.localised : Localization.itemSelector.select.localised )
                                .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.bodyMediumBoldStyle)
                                .padding(.horizontal, 20)
                                .padding(.vertical, 9)
                                .foregroundColor(Color.miamColor(.white))
                                .background( isSelected ? Color.miamColor(.grey) : Color.miamColor(.primary))
                                .cornerRadius(1000)
                        }
                    }.padding(16)
                }
                Divider()
            }
        }
}
