//
//  SymbolCellStyle.swift
//
//
//  Created by Daniel Choroszucha on 30/06/2022.
//

import Foundation
import CoreGraphics

public protocol SymbolCellStyle {
    var symbolSize: CGFloat { get }
    var cornerRadius: CGFloat { get }
}
