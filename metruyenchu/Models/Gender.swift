//
//  Gender.swift
//  metruyenchu
//
//  Created by Hung Bui on 12/05/2024.
//

import Foundation

enum Gender:Int, CaseIterable, Identifiable{
    case all
    case male
    case female
    
    var id: Int {return rawValue}
    var getGenderType: String {
        switch self {
        case .all:
            return "Tất cả"
        case .male:
            return "Nữ"
        case .female:
            return "Nam"
        }
    }
}
