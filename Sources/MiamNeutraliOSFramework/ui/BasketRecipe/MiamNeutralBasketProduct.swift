//
//  MiamNeutralBasketProduct.swift
//  
//
//  Created by didi on 02/10/2023.
//

import SwiftUI
import MiamIOSFramework

@available(iOS 14, *)
public struct MiamNeutralBasketProduct: BasketProductProtocol {
    
    public init() {}
    public func content(
        quantity: Binding<Int>,
        data: BasketProductData,
        actions: BasketProductActions
    ) -> some View {
        VStack(alignment: .leading) {
            HStack(spacing: Dimension.sharedInstance.lPadding) {
                AsyncImage(url: data.pictureURL) { image in
                    image.resizable()
                }
                .frame(width: 96, height: 96)
                infoAndTitle(
                    name: data.name,
                    description: data.description,
                    delete: actions.onDeleteProduct
                )
            }
            .frame(maxWidth: .infinity)
            HStack {
                priceContent(
                    price: data.price,
                    pricePerUnit: data.pricePerUnit
                )
                Spacer()
                HStack(spacing: 12.0) {
                    if data.isSubstitutable {
                        changeProductButton(
                            changeProduct: actions.onChangeProduct
                        )
                    }
                    MiamNeutralStepper(value: quantity, minValue: 0)
                        .onChange(of: quantity.wrappedValue) { qty in
                            actions.onUpdateGuests(qty)
                        }
                        .frame(width: 140.0)
                }
            }
            .frame(maxWidth: .infinity)
        }
    }
    
    func infoAndTitle(
        name: String,
        description: String,
        delete: @escaping () -> Void
    ) -> some View {
            return HStack(alignment: .top) {
                VStack(alignment: .leading, spacing: Dimension.sharedInstance.sPadding) {
                    Text(name)
                        .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.bodyStyle)
                    Text(description)
                        .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.bodyStyle)
                    // TODO: add line with quantity?
                }
                Spacer()
                Button {
                    delete()
                } label: {
                    Image.miamNeutralImage(icon: .bin)
                }
                .padding(Dimension.sharedInstance.mlPadding)
        }.frame(maxWidth: .infinity)
    }
    
    func priceContent(price: Double, pricePerUnit: Double) -> some View {
        return  VStack {
            Text(price.currencyFormatted)
                .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.bodyBigBoldStyle)
                .foregroundColor(Color.miamNeutralColor(.primary))
            Text(formatPricePerUnit(pricePerUnit: price, unit: Localization.price.currency.localised))
                .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.bodySmallStyle)
        }
    }
    
    func changeProductButton(changeProduct: @escaping () -> Void) -> some View {
        return Button {
            changeProduct()
        } label: {
            HStack {
                Image.miamNeutralImage(icon: .refresh)
                Text(Localization.basket.swapProduct.localised)
                    .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.bodyMediumBoldStyle)
                    .foregroundColor(Color.miamNeutralColor(.primary))
            }
        }
    }

    func formatPricePerUnit(pricePerUnit: Double, unit: String) -> String {
        return String(format: "%.2f / %@", pricePerUnit, unit)
    }
}

@available(iOS 14, *)
struct MiamNeutralBasketProduct_Previews: PreviewProvider {
    static var previews: some View {
        let data = BasketProductData(
            price: 34.0,
            name: "Test",
            description: "MY description",
            pictureURL: (URL(string: "https://picsum.photos/400/300") ?? URL(string: ""))!,
            sharedRecipeCount: 3,
            isSubstitutable: false,
            pricePerUnit: 56.0,
            isLoading: false)
        let actions = BasketProductActions(
            onDeleteProduct: {},
            onUpdateGuests: { _ in },
            onChangeProduct: {})
        MiamNeutralBasketProduct().content(
            quantity: .constant(4),
            data: data,
            actions: actions)
    }
}
