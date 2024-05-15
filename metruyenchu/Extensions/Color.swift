//
//  Color.swift
//  metruyenchu
//
//  Created by HungBui on 10/05/2024.
//

import Foundation
import SwiftUI

extension Color {
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
    
}
