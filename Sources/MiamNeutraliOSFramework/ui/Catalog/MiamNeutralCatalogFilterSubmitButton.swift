//
//  SwiftUIView.swift
//  
//
//  Created by didi on 07/08/2023.
//
import SwiftUI
import MiamIOSFramework
import miamCore

@available(iOS 14, *)
struct MiamNeutralCatalogFilterSubmitButton: CatalogFilterSubmitButtonViewTemplate {
    func content(numberOfRecipes: Int, submit: @escaping () -> Void) -> some View {
        Button {
            submit()
        } label: {
            Text("Voir les \(numberOfRecipes) idées repas")
                .padding(EdgeInsets(top: 9, leading: 20, bottom: 9, trailing: 20))
                .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.bodyBigStyle)
                .foregroundColor(.white)
                .background(Color.miamColor(.primary))
                .clipShape(Capsule())
        }
    }
}

@available(iOS 14, *)
struct MiamNeutralCatalogFilterSubmitButton_Previews: PreviewProvider {
    static var previews: some View {
        MiamNeutralCatalogFilterSubmitButton().content(numberOfRecipes: 8, submit: {})
    }
}
