//
//  MiamNeutralPreferencesEquipment.swift
//  
//
//  Created by didi on 22/09/2023.
//

import SwiftUI
import MiamIOSFramework
import miamCore

@available(iOS 14, *)
public struct MiamNeutralPreferencesEquipment: PreferencesEquipmentProtocol {
    public init() {}
    public func content(
        equipmentsTag: [CheckableTag],
        onTogglePreference: @escaping (String) -> Void
    ) -> some View {
        MiamNeutralPreferencesListView(
            title: Localization.preferences.cookingEquipmentTitle.localised,
             subtitle: Localization.preferences.cookingEquipmentSubtitle.localised,
            preferences: equipmentsTag) { tag in
                onTogglePreference(tag.tag.id)
        }
    }
}

@available(iOS 14, *)
struct MiamNeutralPreferencesEquipment_Previews: PreviewProvider {
    static var previews: some View {
        MiamNeutralPreferencesEquipment().content(
            equipmentsTag: [],
            onTogglePreference: {_ in})
    }
}
