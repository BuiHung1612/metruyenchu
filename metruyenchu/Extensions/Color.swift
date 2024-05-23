//
//  Color.swift
//  metruyenchu
//
//  Created by HungBui on 10/05/2024.
//

import Foundation
import SwiftUI

extension Color {
    init(hex: UInt, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha
        )
    }
    static let theme = ColorTheme()
}

struct ColorTheme{
    let backgroundColor = Color("BackgroundColor")
    let darkGraybackgroundColor = Color("DarkGraybackgroundColor")
    let textGray = Color("TextGray")
    let textDarkGray = Color("TextDarkGray")
    
    let primaryTextColor = Color("PrimaryTextColor")
    let secondaryTextColor = Color("SecondaryTextColor")
    let primaryIconColor = Color("PrimaryIconColor")
    let darkBlueColor = Color("DarkBlueColor")
    let primaryGray = Color("PrimaryGray")
}

let COLORS = [Color.white,Color(hex: 0xF4F3F2),Color(hex: 0xF6E3E6),Color(hex: 0xF6F0E5),Color(hex: 0xB8AC97),Color(hex: 0xBAAAA4),Color(hex: 0x272728),Color.black]
