//
//  DashboardView.swift
//  metruyenchu
//
//  Created by HungBui on 10/05/2024.
//

import SwiftUI

struct DashboardView: View {
    let rows: [GridItem] = [.init(),.init()]
    @State private var isShowingGenderSheet = false
    var body: some View {
        VStack{
            
            DashboardHeaderView(isShowingGenderSheet: $isShowingGenderSheet)
                .padding(.horizontal)
            ScrollView{
                DashboardCarouselView()
                DashboardTitleRow(title: "Mới nhất") {
                    //TODO Navigate
                }
                DashboardNewestView()
                
                DashboardTitleRow(title: "Đề cử") {
                    //TODO Navigate
                }
                DashboardHGridView(rows: rows)
            }
            .padding(.bottom,20)
            
           
        }.background(Color.theme.backgroundColor)
            .sheet(isPresented: $isShowingGenderSheet, content: {
                DashboardGenderSheetView()
               
            })
            
        
    }
}

#Preview {
    DashboardView()
}












