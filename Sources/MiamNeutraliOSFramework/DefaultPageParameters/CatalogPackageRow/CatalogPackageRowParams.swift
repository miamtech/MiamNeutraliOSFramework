//
//  CatalogPackageRowParams.swift
//  
//
//  Created by didi on 05/10/2023.
//

import SwiftUI
import MiamIOSFramework

@available(iOS 14, *)
/// This sets the Templates for the CatalogRecipesList Overview
public class CatalogPackageRowParams: CatalogPackageRowParameters {
    
    public var showRecipes: () -> Void
    public var onRecipeTapped: (String) -> Void
    public var customCTA: TypeSafeCatalogPackageCTA
    public var customTitle: TypeSafeBaseTitle
    public init(
        showRecipes: @escaping () -> Void,
        onRecipeTapped: @escaping (String) -> Void,
        customCTA: TypeSafeCatalogPackageCTA = TypeSafeCatalogPackageCTA(MiamNeutralCatalogPackageCTA()),
        customTitle: TypeSafeBaseTitle = TypeSafeBaseTitle(MiamNeutralCatalogPackageTitle())
    ) {
        self.showRecipes = showRecipes
        self.onRecipeTapped = onRecipeTapped
        self.customCTA = customCTA
        self.customTitle = customTitle
    }
    
    public var callToAction: TypeSafeCatalogPackageCTA { return self.customCTA }
    public var title: TypeSafeBaseTitle {
        return self.customTitle
    }
}
