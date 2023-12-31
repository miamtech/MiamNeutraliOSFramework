//
//  Dimension.swift
//  MiamIOSFramework
//
//  Created by Miam on 28/04/2022.
//

import Foundation
import SwiftUI

@available(iOS 14, *)
public class Dimension {
    public static let sharedInstance = Dimension()

    /**
     borderWith: default value 1
     */
    public var borderWidth: CGFloat = 1

    /**
     sPadding: default value 4
     */
    public var sPadding: CGFloat = 4

    /**
     mPadding: default value 8
     */
    public var mPadding: CGFloat = 8

    /**
     lPadding: default value 16
     */
    public var lPadding: CGFloat = 16

    /**
     xlPadding: default value 32
     */
    public var xlPadding: CGFloat = 32

    /**
     mlPadding: default value 10
     */
    public var mlPadding: CGFloat = 10

    /**
     sButtonHeight: default value 8
     */
    public var sButtonHeight: CGFloat = 8

    /**
     mButtonHeight: default value 16
     */
    public var mButtonHeight: CGFloat = 16

    /**
     lButtonHeight: default value 32
     */
    public var lButtonHeight: CGFloat = 32

    /**
     xlButtonHeight: default value 40
     */
    public var xlButtonHeight: CGFloat = 40
    
    /**
     sCornerRadius: default value 4
     */
    public var sCornerRadius: CGFloat = 4
    
    /**
     mCornerRadius: default value 8
     */
    public var mCornerRadius: CGFloat = 8
    
    /**
     lCornerRadius: default value 12
     */
    public var lCornerRadius: CGFloat = 12
}
