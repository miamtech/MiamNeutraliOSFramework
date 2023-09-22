//
//  MiamNeutralPreferencesIngredients.swift
//  
//
//  Created by didi on 22/09/2023.
//

import SwiftUI
import MiamIOSFramework
import miamCore

@available(iOS 14, *)
public struct MiamNeutralPreferencesIngredients: PreferencesIngredientsViewTemplate {
    public init() {}
    public func content(
        ingredientsTag: [CheckableTag],
        geometry: GeometryProxy,
        togglePreference: @escaping (String) -> Void,
        goToSearch: @escaping () -> Void
    ) -> some View {
        
        PreferencesTagsListView(
            title: Localization.preferences.tastesTitle.localised,
            subtitle: Localization.preferences.tastesSubtitle.localised,
            tags: ingredientsTag,
            geometry: geometry,
            onToggleTag: { tag in
                togglePreference(tag.tag.id)
            },
            onAddTagTapped: goToSearch)
    }
}

@available(iOS 14, *)
struct MiamNeutralPreferencesIngredients_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { geometry in
            MiamNeutralPreferencesIngredients().content(
                ingredientsTag: [],
                geometry: geometry,
                togglePreference: {_ in},
                goToSearch: {})
        }
    }
}