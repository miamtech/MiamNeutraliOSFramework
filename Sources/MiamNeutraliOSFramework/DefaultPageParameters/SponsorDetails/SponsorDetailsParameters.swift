//
//  SponsorDetailsParameters.swift
//  
//
//  Created by didi on 11/10/2023.
//

import MiamIOSFramework

@available(iOS 14, *)
/// This sets the Templates for the SponsorDetails
public class SponsorDetailsParameters: BaseViewParameters {
    public var background: TypeSafeBackground
    public var empty: TypeSafeEmpty
    public var loading: TypeSafeLoading
    
    public init(
        viewOptions: SponsorDetailsViewOptions = SponsorDetailsViewOptions()
    ) {
        self.background = viewOptions.background
        self.empty = viewOptions.empty
        self.loading = viewOptions.loading
    }
}

@available(iOS 14, *)
public struct SponsorDetailsViewOptions {
    public var background: TypeSafeBackground
    public var empty: TypeSafeEmpty
    public var loading: TypeSafeLoading
    
    public init(
        empty: TypeSafeEmpty = TypeSafeEmpty(DefaultEmptyView()),
        loading: TypeSafeLoading = TypeSafeLoading(DefaultLoadingView()),
        background: TypeSafeBackground = TypeSafeBackground(DefaultBackgroundView())
    ) {
        self.background = background
        self.empty = empty
        self.loading = loading
    }
}
