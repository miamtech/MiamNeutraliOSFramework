//
//  MiamNeutralAddTagView.swift
//  
//
//  Created by didi on 13/10/2023.
//

import SwiftUI
import MiamIOSFramework

@available(iOS 14, *)
public struct MiamNeutralAddTagView: View {
    public let onTapped: () -> Void
    
    public init(onTapped: @escaping () -> Void) {
        self.onTapped = onTapped
    }
    
    public var body: some View {
        Text(Localization.preferences.addTag.localised)
            .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.bodyBigStyle)
            .padding(14.0)
            .frame(height: 40.0)
            .foregroundColor(Color.miamColor(.black))
            .background(Color.miamColor(.white))
            .clipShape(Capsule())
            .overlay(Capsule().stroke(Color.miamColor(.borderLight), lineWidth: 1.0))
            .onTapGesture {
                onTapped()
            }
    }
}

@available(iOS 14, *)
struct MiamNeutralAddTagView_Previews: PreviewProvider {
    static var previews: some View {
        MiamNeutralAddTagView {
            
        }
    }
}
