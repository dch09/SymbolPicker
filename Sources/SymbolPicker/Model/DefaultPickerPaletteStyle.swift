//
//  DefaultPickerPaletteStyle.swift
//
//
//  Created by Daniel Choroszucha on 30/06/2022.
//

import SwiftUI
#if os(iOS)
import UIKit
#endif

extension Color {
    public static var systemBackground: Color {
        #if os(macOS)
        return Color(NSColor.windowBackgroundColor)
        #else
        return Color(UIColor.systemBackground)
        #endif
    }

    public static var primaryColor: Color {
        #if os(macOS)
        return Color(NSColor.labelColor)
        #else
        return Color(UIColor.label)
        #endif
    }

    public static var separatorColor: Color {
        #if os(macOS)
        return Color(NSColor.separatorColor)
        #else
        return Color(UIColor.separator)
        #endif
    }
}

public struct DefaultPickerPaletteStyle: PickerPaletteStyle {
    public let background: Color = .systemBackground
    public let foreground: Color = .primaryColor
    public let accentColor: Color = .accentColor
    public let separatorColor: Color = .separatorColor
}
