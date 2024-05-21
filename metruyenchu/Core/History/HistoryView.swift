//
//  HistoryView.swift
//  metruyenchu
//
//  Created by HungBui on 10/05/2024.
//

import SwiftUI

struct HistoryView: View {
    @State private var selectedTabIndex = 0
    var body: some View {
        NavigationStack{
            VStack{
               
                HistoryHeaderView(selectedTabIndex: $selectedTabIndex, tabViews: ["Lịch sử", "Đánh dấu"],indicatorFitText: true)
                    .padding(.top)
                    .overlay(Divider(), alignment: .bottom)
                
                TabView(selection: $selectedTabIndex)
                {
                    HistoryPageView()
                    
                        .tag(0)
                    Text("Đánh dấu").tabItem { Text("Tab Label 2") }.tag(1)
                }
                .tabViewStyle(.page(indexDisplayMode: .never))
                
                
            }
            .toolbar(content: {
                ToolbarItem(placement: .topBarLeading) {
                    Text("Tủ truyện")
                        .font(.system(size: 26,weight: .medium))
                        
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "gearshape.fill")
                }
                
            })
            .background(Color.theme.backgroundColor)
            .ignoresSafeArea(edges: .bottom)
        }
       
       
    }
}

#Preview {
    HistoryView()
}







