//
//  FiltersParams.swift
//  
//
//  Created by didi on 05/10/2023.
//

import SwiftUI
import MiamIOSFramework

@available(iOS 14, *)
/// This sets the Templates for the Filters Overview
public class FiltersParameters: FiltersParametersProtocol {
    public var onApplied: () -> Void
    public var onClosed: () -> Void
    public var header: TypeSafeFiltersHeader
    public var callToAction: TypeSafeFiltersCTA
    public var section: TypeSafeFiltersSection
    public var background: TypeSafeBackground
        
    public init(
        onApplied: @escaping () -> Void,
        onClosed: @escaping () -> Void,
        viewOptions: FiltersParamsViewOptions = FiltersParamsViewOptions()
    ) {
        self.onApplied = onApplied
        self.onClosed = onClosed
        self.header = viewOptions.header
        self.callToAction = viewOptions.callToAction
        self.section = viewOptions.section
        self.background = viewOptions.background
    }
}

@available(iOS 14, *)
public struct FiltersParamsViewOptions {
    public var header: TypeSafeFiltersHeader
    public var callToAction: TypeSafeFiltersCTA
    public var section: TypeSafeFiltersSection
    public var background: TypeSafeBackground
    
    public init(
        header: TypeSafeFiltersHeader = TypeSafeFiltersHeader(MiamNeutralFiltersHeader()),
        callToAction: TypeSafeFiltersCTA = TypeSafeFiltersCTA(MiamNeutralFiltersCTA()),
        section: TypeSafeFiltersSection = TypeSafeFiltersSection(MiamNeutralFiltersSection()),
        background: TypeSafeBackground = TypeSafeBackground(DefaultBackgroundView())
    ) {
        self.header = header
        self.callToAction = callToAction
        self.section = section
        self.background = background
    }
}
