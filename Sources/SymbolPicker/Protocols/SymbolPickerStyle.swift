//
//  SymbolPickerStyle.swift
//
//
//  Created by Daniel Choroszucha on 30/06/2022.
//

import Foundation
import CoreGraphics

public protocol SymbolPickerStyle {
    associatedtype CellStyle: SymbolCellStyle
    associatedtype PaletteStyle: PickerPaletteStyle

    var gridDimension: CGFloat { get }
    var cellStyle: CellStyle { get }
    var palette: PaletteStyle { get }
}
