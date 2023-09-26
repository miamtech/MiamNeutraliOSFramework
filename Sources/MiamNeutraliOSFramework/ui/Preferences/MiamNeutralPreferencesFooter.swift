//
//  MiamNeutralPreferencesFooter.swift
//  
//
//  Created by didi on 22/09/2023.
//

import SwiftUI
import MiamIOSFramework

@available(iOS 14, *)
public struct MiamNeutralPreferencesFooter: PreferencesFooterViewTemplate {
    public init() {}
    public func content(
        recipesFound: Int?,
        applyPreferences: @escaping () -> Void,
        closePreferences: @escaping () -> Void
    ) -> some View {
        var createCTAText: String {
            if let recipesFoundText = recipesFound {
                return Localization.catalog.showResults(numberOfResults: Int32(recipesFoundText)).localised
            } else { return Localization.catalog.showAll.localised }
        }
        return HStack {
            Button {
                closePreferences()
            } label: {
                Text(Localization.preferences.cancel.localised)
                    .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.bodyMediumBoldStyle)
                    .foregroundColor(Color.miamColor(.black))
            }
            .frame(maxWidth: .infinity)
            .fixedSize(horizontal: false, vertical: true)
            .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
            .background(
                Capsule().foregroundColor(Color.miamColor(.white)))
            .overlay(
                Capsule().stroke(Color.miamColor(.borderLight), lineWidth: 1.0))
            Button {
                applyPreferences()
            } label: {
                Text(createCTAText)
                    .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.bodyMediumBoldStyle)
                    .foregroundColor(Color.miamColor(.white))
            }
            .frame(maxWidth: .infinity)
            .fixedSize(horizontal: false, vertical: true)
            .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
            .background(Capsule().foregroundColor(Color.miamColor(.primary)))
        }
        .padding(.horizontal, Dimension.sharedInstance.lPadding)
        .background(Color.miamColor(.white))
    }
}

@available(iOS 14, *)
struct MiamNeutralPreferencesFooter_Previews: PreviewProvider {
    static var previews: some View {
        MiamNeutralPreferencesFooter().content(
            recipesFound: 4,
            applyPreferences: {},
            closePreferences: {}
        )
    }
}
