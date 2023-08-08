//
//  MiamNeutralCatalogEmpty.swift
//  
//
//  Created by didi on 08/08/2023.
//

import SwiftUI
import MiamIOSFramework

@available(iOS 14, *)
public struct MiamNeutralCatalogEmpty: GeneralEmptyViewTemplate {
    public init() {}
    public func content() -> some View {
        Text("No Results were returned")
    }
}

@available(iOS 14, *)
struct MiamNeutralCatalogEmpty_Previews: PreviewProvider {
    static var previews: some View {
        MiamNeutralCatalogEmpty().content()
    }
}
