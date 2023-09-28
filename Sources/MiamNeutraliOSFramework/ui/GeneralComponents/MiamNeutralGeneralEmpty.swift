//
//  MiamNeutralGeneralEmpty.swift
//  
//
//  Created by didi on 08/08/2023.
//

import SwiftUI
import MiamIOSFramework

@available(iOS 14, *)
public struct MiamNeutralGeneralEmpty: GeneralEmptyViewTemplate {
    public init() {}
    public func content() -> some View {
        Text("I am empty inside :/")
    }
}

@available(iOS 14, *)
struct MiamNeutralGeneralEmpty_Previews: PreviewProvider {
    static var previews: some View {
        MiamNeutralGeneralEmpty().content()
    }
}
