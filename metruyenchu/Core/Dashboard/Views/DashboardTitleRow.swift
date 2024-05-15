//
//  DashboardTitleRow.swift
//  metruyenchu
//
//  Created by HungBui on 10/05/2024.
//

import SwiftUI

struct DashboardTitleRow: View {
    let title: String
    let action: ()->Void
    var body: some View {
        HStack{
            Text(title)
                .font(.system(size: 18,weight: .semibold))
                .foregroundStyle(Color.theme.textGray)
            
            Spacer()
            Image(systemName: "chevron.right")
                .foregroundStyle(Color.theme.textGray)
        }
        .padding()
        .onTapGesture {
            action()
        }
    }
}

#Preview {
    DashboardTitleRow(title: "Mới nhất") {
        
    }
}
