//
//  HistoryView.swift
//  metruyenchu
//
//  Created by HungBui on 10/05/2024.
//

import SwiftUI

struct HistoryView: View {
    @State private var selectedTabIndex = 0
    @State private var textWidths: [CGFloat] = [0,0]
    var body: some View {
        VStack{
            HStack{
                Text("Tủ truyện")
                    .font(.system(size: 26,weight: .medium))
                Spacer()
                Image(systemName: "gearshape.fill")
            }
            .padding()
            HistoryHeaderView(selectedTabIndex: $selectedTabIndex, textWidths: $textWidths)
                .overlay(Divider(), alignment: .bottom)
            TabView(selection: $selectedTabIndex)
            {
                HistoryPageView().tag(0)
                Text("Đánh dấu").tabItem { /*@START_MENU_TOKEN@*/Text("Tab Label 2")/*@END_MENU_TOKEN@*/ }.tag(1)
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
           
            
        }
        .background(Color.theme.backgroundColor)
        .ignoresSafeArea(edges: .bottom)
     
       
    }
}

#Preview {
    HistoryView()
}


struct ViewSizeKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}

struct ViewGeometry: View {
    var body: some View {
        GeometryReader { geometry in
            Color.clear
                .preference(key: ViewSizeKey.self, value: geometry.size.width)
        }
    }
}




