//
//  PreferencesParameters.swift
//  
//
//  Created by didi on 05/10/2023.
//

import MiamIOSFramework

@available(iOS 14, *)
/// This sets the Templates for the CatalogFiltersPage Overview
public class PreferencesParameters: PreferencesParametersProtocol {
    public var onClosed: () -> Void
    public var onGoToSearch: () -> Void
    
    public var guestSection: TypeSafePreferencesGuest
    public var dietSection: TypeSafePreferencesDiet
    public var ingredientsSection: TypeSafePreferencesIngredients
    public var equipmentSection: TypeSafePreferencesEquipment
    public var footer: TypeSafePreferencesFooter
    public var background: TypeSafeBackground
    public var empty: TypeSafeEmpty
    public var loading: TypeSafeLoading
    
    public init(
        onClosed: @escaping () -> Void,
        onGoToSearch: @escaping () -> Void,
        viewOptions: PreferencesViewOptions = PreferencesViewOptions()
    ) {
        self.onClosed = onClosed
        self.onGoToSearch = onGoToSearch
        self.guestSection = viewOptions.guestSection
        self.dietSection = viewOptions.dietSection
        self.ingredientsSection = viewOptions.ingredientsSection
        self.equipmentSection = viewOptions.equipmentSection
        self.footer = viewOptions.footer
        self.background = viewOptions.background
        self.empty = viewOptions.empty
        self.loading = viewOptions.loading
    }
}

@available(iOS 14, *)
public struct PreferencesViewOptions {
    public var guestSection: TypeSafePreferencesGuest
    public var dietSection: TypeSafePreferencesDiet
    public var ingredientsSection: TypeSafePreferencesIngredients
    public var equipmentSection: TypeSafePreferencesEquipment
    public var footer: TypeSafePreferencesFooter
    public var background: TypeSafeBackground
    public var empty: TypeSafeEmpty
    public var loading: TypeSafeLoading
    
    public init(
        guestSection: TypeSafePreferencesGuest = TypeSafePreferencesGuest(MiamNeutralPreferencesGuest()),
        dietSection: TypeSafePreferencesDiet = TypeSafePreferencesDiet(MiamNeutralPreferencesDiet()),
        ingredientsSection: TypeSafePreferencesIngredients = TypeSafePreferencesIngredients(MiamNeutralPreferencesIngredients()),
        equipmentSection: TypeSafePreferencesEquipment = TypeSafePreferencesEquipment(MiamNeutralPreferencesEquipment()),
        footer: TypeSafePreferencesFooter = TypeSafePreferencesFooter(MiamNeutralPreferencesFooter()),
        empty: TypeSafeEmpty = TypeSafeEmpty(DefaultEmptyView()),
        loading: TypeSafeLoading = TypeSafeLoading(DefaultLoadingView()),
        background: TypeSafeBackground = TypeSafeBackground(DefaultBackgroundView())
    ) {
        self.guestSection = guestSection
        self.dietSection = dietSection
        self.ingredientsSection = ingredientsSection
        self.equipmentSection = equipmentSection
        self.footer = footer
        self.background = background
        self.empty = empty
        self.loading = loading
    }
}
