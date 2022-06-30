//
//  DefaultSymbolPickerStyle.swift
//
//
//  Created by Daniel Choroszucha on 30/06/2022.
//

import Foundation
import CoreGraphics

struct DefaultSymbolPickerStyle: SymbolPickerStyle {
    typealias SymbolCellStyle = DefaultSymbolCellStyle
    typealias PickerPaletteStyle = DefaultPickerPaletteStyle

    var gridDimension: CGFloat {
        #if os(iOS)
            return 64
        #elseif os(macOS)
            return 48
        #endif
    }

    var cellStyle = DefaultSymbolCellStyle()
    var palette = DefaultPickerPaletteStyle()
}
