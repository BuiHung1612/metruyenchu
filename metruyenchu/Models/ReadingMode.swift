//
//  ReadingMode.swift
//  metruyenchu
//
//  Created by HungBui on 23/05/2024.
//

import Foundation


enum ReadingMode{
    case scroll
    case page
    var readingModeName: String{
        switch self {
        case .scroll:
            return "Cuộn dọc"
        case .page:
            return "Lật trang"
        }
    }
    
    var readingModeIcon: String{
        switch self {
        case .scroll:
            return "arrow.down.to.line"
        case .page:
            return "arrow.forward.to.line"
        }
    }
}
