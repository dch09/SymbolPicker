//
//  SymbolCategory.swift
//
//
//  Created by Daniel Choroszucha on 30/06/2022.
//

import Foundation

public enum SymbolCategory: String, Identifiable, CaseIterable {
    case communication
    case weather
    case objectsAndTools = "Object & Tools"
    case devices
    case gaming
    case connectivity
    case transport
    case human
    case nature
    case editing
    case textFormatting = "Text Formatting"
    case media
    case keyboard
    case commerce
    case time
    case health
    case shapes
    case arrows
    case indices
    case maths
    case all

    public var id: String { rawValue }
}

// MARK: Symbols -

extension SymbolCategory {
    var symbols: [String] {
        switch self {
        case .communication:
            return SFCommunication.symbols
        case .weather:
            return SFWeather.symbols
        case .objectsAndTools:
            return SFObjectAndTools.symbols
        case .devices:
            return SFDevices.symbols
        case .gaming:
            return SFGaming.symbols
        case .connectivity:
            return SFConnectivity.symbols
        case .transport:
            return SFTransport.symbols
        case .human:
            return SFHuman.symbols
        case .nature:
            return SFNature.symbols
        case .editing:
            return SFEditing.symbols
        case .textFormatting:
            return SFTextFormatting.symbols
        case .media:
            return SFMedia.symbols
        case .keyboard:
            return SFKeyboard.symbols
        case .commerce:
            return SFCommerce.symbols
        case .time:
            return SFTime.symbols
        case .health:
            return SFHealth.symbols
        case .shapes:
            return SFShapes.symbols
        case .arrows:
            return SFArrows.symbols
        case .indices:
            return SFIndices.symbols
        case .maths:
            return SFMaths.symbols
        case .all:
            return SymbolCategory.allCases.flatMap { $0.symbols }
        }
    }
}

// MARK: Category Icon -

extension SymbolCategory {
    var icon: String {
        switch self {
        case .communication:
            return "message"
        case .weather:
            return "cloud.sun"
        case .objectsAndTools:
            return "folder"
        case .devices:
            return "desktopcomputer"
        case .gaming:
            return "gamecontroller"
        case .connectivity:
            return "antenna.radiowaves.left.and.right"
        case .transport:
            return "car"
        case .human:
            return "person.crop.circle"
        case .nature:
            return "leaf"
        case .editing:
            return "slider.horizontal.3"
        case .textFormatting:
            return "textformat"
        case .media:
            return "playpause"
        case .keyboard:
            return "command"
        case .commerce:
            return "cart"
        case .time:
            return "timer"
        case .health:
            return "heart"
        case .shapes:
            return "rectangle"
        case .arrows:
            return "arrow.right"
        case .indices:
            return "a.circle"
        case .maths:
            return "x.squareroot"
        case .all:
            return "square.grid.2x2"
        }
    }
}
