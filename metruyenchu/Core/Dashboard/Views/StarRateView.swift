//
//  StarRateView.swift
//  metruyenchu
//
//  Created by HungBui on 10/05/2024.
//

import SwiftUI

struct StarRateView: View {
    let iconSize: CGFloat
    let textSize: CGFloat
    let textColor: Color
    
    init(iconSize: CGFloat = 18, textSize: CGFloat = 16, textColor: Color = Color.theme.textDarkGray) {
        self.iconSize = iconSize
        self.textSize = textSize
        self.textColor = textColor
    }
    
    var body: some View {
        HStack(alignment: .top,spacing:12){
            HStack{
                ForEach(0..<5){ _ in
                    Image(systemName: "star.fill")
                        .resizable()
                        .frame(width: iconSize,height:iconSize)
                        .foregroundStyle(.yellow)
                }
            }
            Text("5.0")
                .foregroundStyle(textColor)
                .lineLimit(1)
                .font(.system(size: textSize))
                
            
        }
    }
}

#Preview {
    StarRateView()
}
