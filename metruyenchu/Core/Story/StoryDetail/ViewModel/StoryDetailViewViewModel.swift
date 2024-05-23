//
//  StoryDetailViewViewModel.swift
//  metruyenchu
//
//  Created by HungBui on 23/05/2024.
//

import Foundation
import SwiftUI

class StoryDetailViewViewModel: ObservableObject{
    @Published var fontSize: CGFloat = 14
    @Published var selectedColorIndex = 1{
        didSet{
            selectedBGColor = COLORS[selectedColorIndex]
            if selectedColorIndex == COLORS.count-1 || selectedColorIndex == COLORS.count-2 {
                selectedTextColor = .white
            }
            else{
                selectedTextColor = Color.theme.primaryGray
            }
        }
    }
    @Published var selectedBGColor: Color = Color.theme.backgroundColor
    @Published var selectedTextColor: Color = Color.theme.primaryTextColor
}
