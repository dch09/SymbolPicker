//
//  DefaultSymbolCellStyle.swift
//
//
//  Created by Daniel Choroszucha on 30/06/2022.
//

import Foundation
import CoreGraphics

public struct DefaultSymbolCellStyle: SymbolCellStyle {
    public var symbolSize: CGFloat {
        #if os(iOS)
            return 24
        #elseif os(macOS)
            return 18
        #endif
    }

    public var cornerRadius: CGFloat = 8
}
