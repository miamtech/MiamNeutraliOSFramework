//
//  MiamNeutralPreferencesListView.swift
//  
//
//  Created by didi on 13/10/2023.
//

import SwiftUI
import miamCore

@available(iOS 14, *)
public struct MiamNeutralPreferencesListView: View {
    let title: String
    let subtitle: String
    let preferences: [CheckableTag]
    let onToggleTag: (CheckableTag) -> Void
    
    public init(
        title: String,
        subtitle: String,
        preferences: [CheckableTag],
        onToggleTag: @escaping (CheckableTag) -> Void
    ) {
        self.title = title
        self.subtitle = subtitle
        self.preferences = preferences
        self.onToggleTag = onToggleTag
    }
    
    public var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.titleMediumStyle)
                .padding(.top, Dimension.sharedInstance.mPadding)
            Text(subtitle)
                .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.bodyStyle)
                .padding(.bottom, Dimension.sharedInstance.mPadding)
            
            VStack(alignment: .leading) {
                ForEach(preferences, id: \.self) { tag in
                    MiamNeutralPreferenceListItemView(tag: tag) { tag in
                        onToggleTag(tag)
                    }
                }
            }.background(Color.mealzColor(.white))
                .padding([.bottom], 8.0)
                .cornerRadius(8.0)
                .padding([.bottom], -8.0)
        }.background(Color.mealzColor(.lightBackground))
    }
}

@available(iOS 14, *)
struct MiamNeutralPreferencesListView_Previews: PreviewProvider {
    static var previews: some View {
        MiamNeutralPreferencesListView(
            title: "Vegetarien",
            subtitle: "No Meat",
            preferences: [],
            onToggleTag: { _ in })
    }
}
