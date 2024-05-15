//
//  GenderRowView.swift
//  metruyenchu
//
//  Created by Hung Bui on 12/05/2024.
//

import SwiftUI

struct GenderRowView: View {
    let title: String
    let genderType: Gender
    let isSelected: Bool
    var body: some View {
        VStack{
            Divider()
            HStack{
                Text(title)
                    .foregroundStyle(Color.theme.primaryTextColor)
                Spacer()
                Image(systemName:  isSelected ? "checkmark.circle.fill" : "circle")
                        .imageScale(.medium)
                        .foregroundStyle(isSelected ? .blue : .gray)
            }     
        }
       
    }
}

#Preview {
    GenderRowView(
        title: "Tất cả", genderType: .all, isSelected: true )
}
