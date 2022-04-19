//
//  Font+Ext.swift
//  RInstagram
//
//  Created by Ali Aghamirbabaei on 4/18/22.
//

import SwiftUI

extension Font {
    enum typeFont {
        case regular
        case bold
        case variable
    }
    
    /// Create a custom font with the given `type` and `size` that scales with
    /// the body text style.
    static func fontUtil(_ type: typeFont, size: CGFloat) -> Font {
        if type == .regular {
            return .custom("Quicksand-Regular", size: size)
        } else {
            return .custom("Quicksand-Bold", size: size)
        }
    }
}
