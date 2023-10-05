//
//  DefaultCatalogPackageRowParams.swift
//  
//
//  Created by didi on 05/10/2023.
//

import SwiftUI
import MiamIOSFramework

@available(iOS 14, *)
/// This sets the Templates for the CatalogRecipesList Overview
public class DefaultCatalogPackageRowParams: CatalogPackageRowParameters {
    public var showRecipes: () -> Void
    public var onRecipeTapped: (String) -> Void
    public init(
        showRecipes: @escaping () -> Void,
        onRecipeTapped: @escaping (String) -> Void
    ) {
        self.showRecipes = showRecipes
        self.onRecipeTapped = onRecipeTapped
    }
}
