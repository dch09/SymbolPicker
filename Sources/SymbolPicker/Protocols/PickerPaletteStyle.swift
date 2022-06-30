//
//  PickerPaletteStyle.swift
//
//
//  Created by Daniel Choroszucha on 30/06/2022.
//

import SwiftUI

public protocol PickerPaletteStyle {
    var background: Color { get }
    var foreground: Color { get }
    var accentColor: Color { get }
    var separatorColor: Color { get }
}
