//
//  MiamNeutralPreferencesTitle.swift
//  
//
//  Created by didi on 22/09/2023.
//

import SwiftUI
import MiamIOSFramework

@available(iOS 14, *)
public struct MiamNeutralPreferencesTitle: GeneralTitleViewTemplate {
    public init() {}
    public func content(title: String, subtitle: String?) -> some View {
        HStack {
            Text(title)
                .foregroundColor(Color.blue)
                .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.titleStyle)
                .frame(height: 40.0)
            Spacer()
        }
    }
}

@available(iOS 14, *)
struct MiamNeutralPreferencesTitle_Previews: PreviewProvider {
    static var previews: some View {
        MiamNeutralPreferencesTitle().content(title: "Test", subtitle: "Subtitle")
    }
}
