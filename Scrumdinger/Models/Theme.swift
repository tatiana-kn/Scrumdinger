//
//  Theme.swift
//  Scrumdinger
//
//  Created by Tia M on 3/6/24.
//

import SwiftUI

enum Theme: String, CaseIterable, Identifiable {
    case bubblegum
    case buttercup
    case indigoTheme
    case lavender
    case magenty
    case navy
    case orangy
    case oxblood
    case periwinkle
    case poppy
    case purpleTheme
    case seafoam
    case sky
    case tan
    case tealTheme
    case yellowTheme
    
    var accentColor: Color {
        switch self {
        case .bubblegum, .buttercup, .lavender, .orangy, .periwinkle, .poppy, .seafoam, .sky, .tan, .tealTheme, .yellowTheme: return .black
        case .indigoTheme, .magenty, .navy, .oxblood, .purpleTheme: return .white
        }
    }
    
    var mainColor: Color {
        Color(rawValue)
    }
    
    var name: String {
        rawValue.capitalized
    }
    
    var id: String {
        name
    }
    
}
