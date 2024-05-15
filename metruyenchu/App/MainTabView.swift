//
//  MainTabView.swift
//  metruyenchu
//
//  Created by Hung Bui on 13/05/2024.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedTabIndex = 0
    var body: some View {
        TabView(selection: $selectedTabIndex)  {
            HistoryView()
                .tabItem {
                    Image(systemName: selectedTabIndex == 0 ? "book.fill" : "book")
                        .environment(\.symbolVariants, .none)
                }
                .tag(0)
            DashboardView()
                .tabItem {
                    Image(systemName: selectedTabIndex == 1 ? "book.pages.fill" : "book.pages")
                        .environment(\.symbolVariants, .none)
                }
                .tag(1)
            NotificationView()
                .tabItem {
                    Image(systemName: selectedTabIndex == 2 ? "bell.fill" : "bell")
                        .environment(\.symbolVariants, .none)
                }
                .tag(2)
            ProfileScreen()
                .tabItem {
                    Image(systemName: selectedTabIndex == 3 ? "person.fill" : "person")
                        .environment(\.symbolVariants, .none)
                }
                .tag(3)
        }.tint(Color.theme.primaryTextColor)
    }
}

#Preview {
    MainTabView()
}
