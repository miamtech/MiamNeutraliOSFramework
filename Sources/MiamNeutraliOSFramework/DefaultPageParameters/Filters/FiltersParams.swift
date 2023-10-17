//
//  FiltersParams.swift
//  
//
//  Created by didi on 05/10/2023.
//

import SwiftUI
import MiamIOSFramework

/**
 An implementation of ``FiltersParametersProtocol``
 
 Mandatory Parameters:
 - onApplied: () -> Void: A closure that updates the Filters Singleton & closes the page.
 - onClosed: () -> Void: A closure that is triggered when the filters page is closed.
 
 Optional Parameters:
 - viewOptions: an implementation of ``FiltersParamsViewOptions``
 
 */
@available(iOS 14, *)
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

/**
 The optional View parameters for the FiltersView. If nothing is passed in, the Miam Default will be used
 
 - header:  An implementation of ``FiltersHeaderProtocol``
 - section:  An implementation of ``FiltersSectionProtocol``
 - callToAction:  An implementation of ``FiltersCTAProtocol``
 - background: An implementation of ``BackgroundProtocol``
 */
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
