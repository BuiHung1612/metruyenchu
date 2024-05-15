//
//  DashboardHeaderView.swift
//  metruyenchu
//
//  Created by HungBui on 10/05/2024.
//

import SwiftUI

struct DashboardHeaderView: View {
    @Binding var isShowingGenderSheet:Bool
    
    var body: some View {
        HStack{
            HStack{
                Image(systemName: "figure.child.circle")
                    .imageScale(.medium)
                    .bold()
                    .foregroundStyle(Color.theme.primaryIconColor)
                HStack{
                    Text("Tất cả")
                        .fontWeight(.medium)
                        .foregroundStyle(Color.theme.primaryTextColor)
                    Image(systemName: "chevron.down")
                        .imageScale(.small)
                }
                .onTapGesture {
                    isShowingGenderSheet.toggle()
                }
                
            }
            Spacer()
            
            HStack{
                Image(systemName: "magnifyingglass")
                    .bold()
                    .padding(.trailing,16)
                    .foregroundStyle(Color.theme.primaryIconColor)
                
                Image(systemName: "line.3.horizontal.decrease")
                    .bold().foregroundStyle(Color.theme.primaryIconColor)
                
            }
        }
    }
}

#Preview {
    DashboardHeaderView(isShowingGenderSheet: .constant(true))
}
