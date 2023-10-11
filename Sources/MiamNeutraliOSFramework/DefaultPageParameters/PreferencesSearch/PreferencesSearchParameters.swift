//
//  PreferencesSearchParameters.swift
//  
//
//  Created by didi on 05/10/2023.
//

import MiamIOSFramework

@available(iOS 14, *)
/// This sets the Templates for the PreferencesSearchView Overview
public class PreferencesSearchParameters: PreferencesSearchProtocol {
    public var onClosed: () -> Void
    public var search: TypeSafeSearch
    public var tagButton: TypeSafeBaseButton
    public var background: TypeSafeBackground
    public var empty: TypeSafeEmpty
    public var loading: TypeSafeLoading
    public init(
        onClosed: @escaping () -> Void,
        viewOptions: PreferencesSearchViewOptions = PreferencesSearchViewOptions()
    ) {
        self.onClosed = onClosed
        self.search = viewOptions.search
        self.tagButton = viewOptions.tagButton
        self.background = viewOptions.background
        self.empty = viewOptions.empty
        self.loading = viewOptions.loading
    }
}

@available(iOS 14, *)
public struct PreferencesSearchViewOptions {
    public var search: TypeSafeSearch
    public var tagButton: TypeSafeBaseButton
    public var background: TypeSafeBackground
    public var empty: TypeSafeEmpty
    public var loading: TypeSafeLoading
    
    public init(
        search: TypeSafeSearch = TypeSafeSearch(MiamNeutralGeneralSearch(hasButton: false)),
        tagButton: TypeSafeBaseButton = TypeSafeBaseButton(MiamNeutralPreferencesSearchTag()),
        background: TypeSafeBackground = TypeSafeBackground(DefaultBackgroundView()),
        empty: TypeSafeEmpty = TypeSafeEmpty(DefaultEmptyView()),
        loading: TypeSafeLoading = TypeSafeLoading(DefaultLoadingView())
    ) {
        self.search = search
        self.tagButton = tagButton
        self.background = background
        self.empty = empty
        self.loading = loading
    }
}
