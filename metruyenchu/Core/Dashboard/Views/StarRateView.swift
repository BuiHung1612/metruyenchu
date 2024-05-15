//
//  StarRateView.swift
//  metruyenchu
//
//  Created by HungBui on 10/05/2024.
//

import SwiftUI

struct StarRateView: View {
    var body: some View {
        HStack(spacing:12){
            HStack{
                ForEach(0..<5){ _ in
                    Image(systemName: "star.fill")
                        .resizable()
                        .frame(width: 18,height:18)
                        .foregroundStyle(.yellow)
                }
            }
            Text("5.0")
                .foregroundStyle(Color.theme.textDarkGray)
                .lineLimit(1)
        }
    }
}

#Preview {
    StarRateView()
}
